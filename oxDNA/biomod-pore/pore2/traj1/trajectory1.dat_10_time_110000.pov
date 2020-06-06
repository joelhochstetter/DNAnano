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
	<23.295267, 17.212578, -1.286318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094162, 17.271946, -1.626952>,  <22.973499, 17.307566, -1.831333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094162, 17.271946, -1.626952>,  <23.295267, 17.212578, -1.286318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.094162, 17.271946, -1.626952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801193, 0.289843, 0.523528,
		0.324528, 0.945496, -0.026811,
		-0.502764, 0.148419, -0.851587,
		22.943333, 17.316471, -1.882428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045530, 17.944677, -1.361812>,  <23.295267, 17.212578, -1.286318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045530, 17.944677, -1.361812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821964, 17.673820, -1.553268>,  <22.687824, 17.511307, -1.668141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821964, 17.673820, -1.553268>,  <23.045530, 17.944677, -1.361812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821964, 17.673820, -1.553268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810461, 0.323980, 0.488046,
		-0.175406, 0.660695, -0.729873,
		-0.558915, -0.677140, -0.478640,
		22.654289, 17.470678, -1.696859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.546007, 18.240320, -1.836761>,  <23.045530, 17.944677, -1.361812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.546007, 18.240320, -1.836761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425308, 17.898125, -1.668434>,  <22.352888, 17.692808, -1.567438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425308, 17.898125, -1.668434>,  <22.546007, 18.240320, -1.836761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.425308, 17.898125, -1.668434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729598, 0.491336, 0.475684,
		-0.613705, -0.163490, -0.772423,
		-0.301749, -0.855488, 0.420818,
		22.334784, 17.641478, -1.542189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824644, 18.084909, -2.039874>,  <22.546007, 18.240320, -1.836761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824644, 18.084909, -2.039874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931469, 17.918102, -1.692364>,  <21.995564, 17.818018, -1.483858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931469, 17.918102, -1.692364>,  <21.824644, 18.084909, -2.039874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.931469, 17.918102, -1.692364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755419, 0.469159, 0.457419,
		-0.598347, -0.778450, -0.189729,
		0.267064, -0.417020, 0.868776,
		22.011589, 17.792995, -1.431731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226248, 17.626717, -1.800150>,  <21.824644, 18.084909, -2.039874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226248, 17.626717, -1.800150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.450562, 17.758984, -1.496524>,  <21.585150, 17.838345, -1.314348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.450562, 17.758984, -1.496524>,  <21.226248, 17.626717, -1.800150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.450562, 17.758984, -1.496524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798056, 0.460051, 0.389179,
		-0.220520, -0.824022, 0.521881,
		0.560784, 0.330669, 0.759065,
		21.618797, 17.858185, -1.268804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.899174, 17.374527, -1.130095>,  <21.226248, 17.626717, -1.800150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.899174, 17.374527, -1.130095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135857, 17.692619, -1.077189>,  <21.277866, 17.883474, -1.045446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135857, 17.692619, -1.077189>,  <20.899174, 17.374527, -1.130095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135857, 17.692619, -1.077189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757705, 0.492587, 0.428066,
		0.275259, -0.353506, 0.894017,
		0.591705, 0.795231, 0.132264,
		21.313368, 17.931189, -1.037510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078695, 17.463127, -0.334155>,  <20.899174, 17.374527, -1.130095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078695, 17.463127, -0.334155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016815, 17.757023, -0.598345>,  <20.979687, 17.933361, -0.756858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016815, 17.757023, -0.598345>,  <21.078695, 17.463127, -0.334155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016815, 17.757023, -0.598345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801811, 0.297205, 0.518428,
		0.577205, 0.609777, 0.543144,
		-0.154700, 0.734739, -0.660475,
		20.970406, 17.977444, -0.796487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992735, 18.156773, 0.006204>,  <21.078695, 17.463127, -0.334155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992735, 18.156773, 0.006204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791138, 18.135036, -0.338595>,  <20.670179, 18.121994, -0.545474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791138, 18.135036, -0.338595>,  <20.992735, 18.156773, 0.006204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791138, 18.135036, -0.338595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859395, 0.131165, 0.494202,
		0.086209, 0.989870, -0.112805,
		-0.503992, -0.054340, -0.861997,
		20.639940, 18.118734, -0.597194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619017, 18.779043, -0.274168>,  <20.992735, 18.156773, 0.006204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619017, 18.779043, -0.274168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430382, 18.431561, -0.334773>,  <20.317202, 18.223070, -0.371136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430382, 18.431561, -0.334773>,  <20.619017, 18.779043, -0.274168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430382, 18.431561, -0.334773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758704, 0.312146, 0.571781,
		-0.449416, 0.384596, -0.806295,
		-0.471586, -0.868706, -0.151511,
		20.288906, 18.170948, -0.380226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.909050, 18.927862, -0.468185>,  <20.619017, 18.779043, -0.274168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.909050, 18.927862, -0.468185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895538, 18.567253, -0.295619>,  <19.887430, 18.350887, -0.192079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895538, 18.567253, -0.295619>,  <19.909050, 18.927862, -0.468185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895538, 18.567253, -0.295619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836202, 0.261913, 0.481837,
		-0.547379, -0.344474, -0.762701,
		-0.033781, -0.901521, 0.431415,
		19.885405, 18.296797, -0.166194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221521, 18.591211, -0.468440>,  <19.909050, 18.927862, -0.468185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221521, 18.591211, -0.468440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.439125, 18.464020, -0.157843>,  <19.569687, 18.387705, 0.028515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.439125, 18.464020, -0.157843>,  <19.221521, 18.591211, -0.468440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.439125, 18.464020, -0.157843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766068, 0.189334, 0.614241,
		-0.342333, -0.929000, -0.140595,
		0.544010, -0.317980, 0.776493,
		19.602327, 18.368626, 0.075105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813150, 18.115723, -0.128724>,  <19.221521, 18.591211, -0.468440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813150, 18.115723, -0.128724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071346, 18.259354, 0.140914>,  <19.226265, 18.345533, 0.302697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071346, 18.259354, 0.140914>,  <18.813150, 18.115723, -0.128724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071346, 18.259354, 0.140914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740996, 0.080514, 0.666665,
		0.185110, -0.929828, 0.318047,
		0.645491, 0.359078, 0.674095,
		19.264994, 18.367077, 0.343143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789614, 17.819242, 0.552332>,  <18.813150, 18.115723, -0.128724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789614, 17.819242, 0.552332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921600, 18.193161, 0.604916>,  <19.000792, 18.417511, 0.636466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921600, 18.193161, 0.604916>,  <18.789614, 17.819242, 0.552332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921600, 18.193161, 0.604916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715867, 0.157010, 0.680354,
		0.615351, -0.318601, 0.720997,
		0.329965, 0.934795, 0.131460,
		19.020590, 18.473598, 0.644354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.036047, 17.954964, 1.243043>,  <18.789614, 17.819242, 0.552332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.036047, 17.954964, 1.243043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858299, 18.257717, 1.051351>,  <18.751650, 18.439369, 0.936336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858299, 18.257717, 1.051351>,  <19.036047, 17.954964, 1.243043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858299, 18.257717, 1.051351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685493, 0.057117, 0.725836,
		0.576746, 0.651048, 0.493458,
		-0.444369, 0.756885, -0.479230,
		18.724989, 18.484783, 0.907582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627245, 18.189871, 1.029454>,  <19.036047, 17.954964, 1.243043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627245, 18.189871, 1.029454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873928, 17.911774, 1.177135>,  <20.021938, 17.744915, 1.265743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873928, 17.911774, 1.177135>,  <19.627245, 18.189871, 1.029454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873928, 17.911774, 1.177135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389260, 0.676988, 0.624630,
		-0.684215, -0.241498, 0.688134,
		0.616706, -0.695245, 0.369200,
		20.058939, 17.703199, 1.287894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717623, 18.277834, 1.759563>,  <19.627245, 18.189871, 1.029454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717623, 18.277834, 1.759563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056656, 18.104321, 1.637294>,  <20.260077, 18.000212, 1.563932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056656, 18.104321, 1.637294>,  <19.717623, 18.277834, 1.759563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056656, 18.104321, 1.637294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530128, 0.666265, 0.524457,
		-0.023843, -0.606566, 0.794675,
		0.847582, -0.433784, -0.305672,
		20.310930, 17.974186, 1.545592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146446, 18.113329, 2.396233>,  <19.717623, 18.277834, 1.759563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146446, 18.113329, 2.396233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359306, 18.157928, 2.060523>,  <20.487022, 18.184689, 1.859096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359306, 18.157928, 2.060523>,  <20.146446, 18.113329, 2.396233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359306, 18.157928, 2.060523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584983, 0.668196, 0.459684,
		0.612053, -0.735583, 0.290358,
		0.532152, 0.111496, -0.839275,
		20.518951, 18.191378, 1.808740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.988874, 17.894758, 2.423288>,  <20.146446, 18.113329, 2.396233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.988874, 17.894758, 2.423288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827854, 18.186493, 2.202011>,  <20.731243, 18.361534, 2.069244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827854, 18.186493, 2.202011>,  <20.988874, 17.894758, 2.423288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827854, 18.186493, 2.202011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462889, 0.683545, 0.564358,
		0.789739, -0.028886, -0.612762,
		-0.402549, 0.729336, -0.553194,
		20.707090, 18.405294, 2.036052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551561, 18.306135, 2.262462>,  <20.988874, 17.894758, 2.423288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551561, 18.306135, 2.262462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.198711, 18.493904, 2.277942>,  <20.987001, 18.606565, 2.287230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.198711, 18.493904, 2.277942>,  <21.551561, 18.306135, 2.262462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198711, 18.493904, 2.277942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352435, 0.603308, 0.715408,
		0.312480, 0.644719, -0.697634,
		-0.882126, 0.469421, 0.038700,
		20.934074, 18.634731, 2.289552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742678, 19.036137, 2.276076>,  <21.551561, 18.306135, 2.262462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742678, 19.036137, 2.276076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395611, 19.001511, 2.471898>,  <21.187370, 18.980736, 2.589390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395611, 19.001511, 2.471898>,  <21.742678, 19.036137, 2.276076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395611, 19.001511, 2.471898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333409, 0.629126, 0.702168,
		-0.368774, 0.772468, -0.517009,
		-0.867666, -0.086565, 0.489553,
		21.135311, 18.975540, 2.618763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635599, 19.706837, 2.577740>,  <21.742678, 19.036137, 2.276076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635599, 19.706837, 2.577740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405128, 19.459557, 2.791600>,  <21.266846, 19.311190, 2.919917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405128, 19.459557, 2.791600>,  <21.635599, 19.706837, 2.577740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405128, 19.459557, 2.791600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297877, 0.450327, 0.841710,
		-0.761111, 0.644234, -0.075321,
		-0.576176, -0.618198, 0.534651,
		21.232275, 19.274097, 2.951996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189831, 20.050697, 3.168349>,  <21.635599, 19.706837, 2.577740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189831, 20.050697, 3.168349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.259411, 19.668301, 3.262851>,  <21.301159, 19.438862, 3.319552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.259411, 19.668301, 3.262851>,  <21.189831, 20.050697, 3.168349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.259411, 19.668301, 3.262851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468139, 0.291349, 0.834243,
		-0.866364, -0.034518, 0.498219,
		0.173952, -0.955994, 0.236255,
		21.311596, 19.381502, 3.333728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.496546, 20.199533, 3.794925>,  <21.189831, 20.050697, 3.168349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.496546, 20.199533, 3.794925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423851, 19.806210, 3.791544>,  <21.380234, 19.570215, 3.789516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423851, 19.806210, 3.791544>,  <21.496546, 20.199533, 3.794925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423851, 19.806210, 3.791544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214147, -0.047966, 0.975623,
		-0.959746, 0.175498, 0.219291,
		-0.181738, -0.983311, -0.008452,
		21.369329, 19.511217, 3.789009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885416, 20.016188, 4.198198>,  <21.496546, 20.199533, 3.794925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885416, 20.016188, 4.198198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139744, 19.707478, 4.194221>,  <21.292341, 19.522251, 4.191834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139744, 19.707478, 4.194221>,  <20.885416, 20.016188, 4.198198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139744, 19.707478, 4.194221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077284, 0.050841, 0.995712,
		-0.767959, -0.633862, 0.091972,
		0.635819, -0.771774, -0.009944,
		21.330490, 19.475945, 4.191237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790056, 19.728418, 4.876949>,  <20.885416, 20.016188, 4.198198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790056, 19.728418, 4.876949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.130730, 19.573017, 4.736267>,  <21.335135, 19.479776, 4.651858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.130730, 19.573017, 4.736267>,  <20.790056, 19.728418, 4.876949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.130730, 19.573017, 4.736267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404661, 0.061106, 0.912423,
		-0.332989, -0.919419, 0.209255,
		0.851685, -0.388504, -0.351705,
		21.386236, 19.456467, 4.630755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665228, 19.668381, 5.554708>,  <20.790056, 19.728418, 4.876949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665228, 19.668381, 5.554708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542759, 19.997169, 5.746800>,  <20.469278, 20.194443, 5.862056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542759, 19.997169, 5.746800>,  <20.665228, 19.668381, 5.554708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542759, 19.997169, 5.746800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651574, -0.186844, 0.735215,
		0.694054, 0.538008, -0.478369,
		-0.306171, 0.821971, 0.480232,
		20.450909, 20.243761, 5.890870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204273, 20.264578, 5.721654>,  <20.665228, 19.668381, 5.554708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204273, 20.264578, 5.721654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910069, 20.230698, 5.990532>,  <20.733545, 20.210369, 6.151859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910069, 20.230698, 5.990532>,  <21.204273, 20.264578, 5.721654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910069, 20.230698, 5.990532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674418, -0.186222, 0.714480,
		0.064662, 0.978850, 0.194091,
		-0.735513, -0.084699, 0.672195,
		20.689415, 20.205288, 6.192191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.644318, 20.056648, 6.264736>,  <21.204273, 20.264578, 5.721654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.644318, 20.056648, 6.264736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283520, 20.142754, 6.414436>,  <21.067041, 20.194416, 6.504257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283520, 20.142754, 6.414436>,  <21.644318, 20.056648, 6.264736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283520, 20.142754, 6.414436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308995, -0.283551, 0.907811,
		0.301538, 0.934484, 0.189247,
		-0.901996, 0.215263, 0.374252,
		21.012920, 20.207333, 6.526712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.854156, 20.588717, 6.818686>,  <21.644318, 20.056648, 6.264736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.854156, 20.588717, 6.818686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490181, 20.567768, 6.983254>,  <21.271795, 20.555199, 7.081996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490181, 20.567768, 6.983254>,  <21.854156, 20.588717, 6.818686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490181, 20.567768, 6.983254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409339, 0.046207, 0.911212,
		-0.066731, 0.997558, -0.020608,
		-0.909939, -0.052370, 0.411422,
		21.217199, 20.552057, 7.106681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.971582, 21.045090, 7.328341>,  <21.854156, 20.588717, 6.818686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.971582, 21.045090, 7.328341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686543, 20.796791, 7.459108>,  <21.515518, 20.647812, 7.537569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686543, 20.796791, 7.459108>,  <21.971582, 21.045090, 7.328341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686543, 20.796791, 7.459108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484144, -0.097857, 0.869499,
		-0.507746, 0.777881, 0.370263,
		-0.712600, -0.620745, 0.326920,
		21.472763, 20.610567, 7.557184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717178, 21.303442, 7.933560>,  <21.971582, 21.045090, 7.328341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717178, 21.303442, 7.933560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.694424, 20.905003, 7.906564>,  <21.680771, 20.665939, 7.890366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.694424, 20.905003, 7.906564>,  <21.717178, 21.303442, 7.933560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.694424, 20.905003, 7.906564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517948, -0.087236, 0.850953,
		-0.853519, 0.013449, 0.520888,
		-0.056884, -0.996097, -0.067492,
		21.677359, 20.606174, 7.886316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461529, 20.868662, 8.556589>,  <21.717178, 21.303442, 7.933560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461529, 20.868662, 8.556589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.741035, 20.642590, 8.381183>,  <21.908739, 20.506947, 8.275939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.741035, 20.642590, 8.381183>,  <21.461529, 20.868662, 8.556589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.741035, 20.642590, 8.381183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471863, -0.096572, 0.876367,
		-0.537656, -0.819294, 0.199208,
		0.698764, -0.565183, -0.438517,
		21.950665, 20.473036, 8.249627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626453, 20.306568, 8.997293>,  <21.461529, 20.868662, 8.556589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626453, 20.306568, 8.997293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.946388, 20.322323, 8.757724>,  <22.138350, 20.331776, 8.613982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.946388, 20.322323, 8.757724>,  <21.626453, 20.306568, 8.997293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.946388, 20.322323, 8.757724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598985, 0.011525, 0.800677,
		0.038442, -0.999157, -0.014376,
		0.799837, 0.039391, -0.598923,
		22.186340, 20.334139, 8.578047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.028919, 19.621973, 9.124808>,  <21.626453, 20.306568, 8.997293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.028919, 19.621973, 9.124808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195496, 19.968864, 9.015635>,  <22.295441, 20.177000, 8.950130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195496, 19.968864, 9.015635>,  <22.028919, 19.621973, 9.124808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.195496, 19.968864, 9.015635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627921, -0.057249, 0.776169,
		0.657490, -0.494608, -0.568392,
		0.416439, 0.867229, -0.272934,
		22.320427, 20.229033, 8.933754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.732985, 19.512709, 8.943105>,  <22.028919, 19.621973, 9.124808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.732985, 19.512709, 8.943105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648384, 19.867508, 9.107300>,  <22.597624, 20.080387, 9.205817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648384, 19.867508, 9.107300>,  <22.732985, 19.512709, 8.943105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648384, 19.867508, 9.107300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588497, -0.219751, 0.778062,
		0.780346, 0.406131, -0.475519,
		-0.211500, 0.886999, 0.410488,
		22.584934, 20.133608, 9.230446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.392603, 19.787415, 9.276746>,  <22.732985, 19.512709, 8.943105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.392603, 19.787415, 9.276746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065517, 19.947018, 9.442702>,  <22.869267, 20.042780, 9.542276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065517, 19.947018, 9.442702>,  <23.392603, 19.787415, 9.276746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065517, 19.947018, 9.442702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403617, -0.116452, 0.907487,
		0.410408, 0.909523, -0.065822,
		-0.817716, 0.399007, 0.414891,
		22.820202, 20.066719, 9.567170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.629162, 20.067623, 9.845482>,  <23.392603, 19.787415, 9.276746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.629162, 20.067623, 9.845482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.239746, 20.083698, 9.935464>,  <23.006096, 20.093344, 9.989453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.239746, 20.083698, 9.935464>,  <23.629162, 20.067623, 9.845482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.239746, 20.083698, 9.935464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221207, -0.081265, 0.971835,
		0.057336, 0.995882, 0.070225,
		-0.973540, 0.040187, 0.224955,
		22.947683, 20.095755, 10.002951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.475183, 20.700209, 10.306292>,  <23.629162, 20.067623, 9.845482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.475183, 20.700209, 10.306292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180668, 20.435890, 10.364569>,  <23.003958, 20.277300, 10.399535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180668, 20.435890, 10.364569>,  <23.475183, 20.700209, 10.306292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.180668, 20.435890, 10.364569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278015, -0.099119, 0.955449,
		-0.616916, 0.743992, 0.256691,
		-0.736290, -0.660796, 0.145692,
		22.959782, 20.237652, 10.408277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.100939, 20.923119, 10.893959>,  <23.475183, 20.700209, 10.306292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.100939, 20.923119, 10.893959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.030243, 20.530045, 10.871708>,  <22.987825, 20.294201, 10.858357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.030243, 20.530045, 10.871708>,  <23.100939, 20.923119, 10.893959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.030243, 20.530045, 10.871708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076118, -0.069994, 0.994639,
		-0.981310, 0.171558, 0.087170,
		-0.176740, -0.982684, -0.055628,
		22.977221, 20.235239, 10.855020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673225, 20.902988, 11.445919>,  <23.100939, 20.923119, 10.893959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673225, 20.902988, 11.445919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.797977, 20.531712, 11.364740>,  <22.872829, 20.308945, 11.316033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.797977, 20.531712, 11.364740>,  <22.673225, 20.902988, 11.445919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.797977, 20.531712, 11.364740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011310, -0.209959, 0.977645,
		-0.950054, -0.307203, -0.054984,
		0.311879, -0.928194, -0.202947,
		22.891541, 20.253254, 11.303857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289921, 20.531204, 11.885652>,  <22.673225, 20.902988, 11.445919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289921, 20.531204, 11.885652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563358, 20.259476, 11.778902>,  <22.727421, 20.096439, 11.714852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563358, 20.259476, 11.778902>,  <22.289921, 20.531204, 11.885652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563358, 20.259476, 11.778902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005259, -0.361057, 0.932529,
		-0.729842, -0.638877, -0.243244,
		0.683596, -0.679319, -0.266874,
		22.768436, 20.055679, 11.698840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005623, 19.853706, 11.990836>,  <22.289921, 20.531204, 11.885652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005623, 19.853706, 11.990836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403984, 19.829411, 12.017620>,  <22.643002, 19.814833, 12.033690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403984, 19.829411, 12.017620>,  <22.005623, 19.853706, 11.990836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403984, 19.829411, 12.017620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088160, -0.488528, 0.868083,
		-0.020014, -0.870432, -0.491882,
		0.995905, -0.060738, 0.066959,
		22.702755, 19.811190, 12.037708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215384, 19.149185, 12.309124>,  <22.005623, 19.853706, 11.990836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215384, 19.149185, 12.309124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513649, 19.409218, 12.367617>,  <22.692608, 19.565237, 12.402712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513649, 19.409218, 12.367617>,  <22.215384, 19.149185, 12.309124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.513649, 19.409218, 12.367617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192349, -0.420121, 0.886849,
		0.637959, -0.633161, -0.438310,
		0.745661, 0.650081, 0.146232,
		22.737347, 19.604242, 12.411487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.759809, 18.878307, 12.575463>,  <22.215384, 19.149185, 12.309124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.759809, 18.878307, 12.575463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.871975, 19.254627, 12.651632>,  <22.939274, 19.480419, 12.697333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.871975, 19.254627, 12.651632>,  <22.759809, 18.878307, 12.575463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.871975, 19.254627, 12.651632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246999, -0.262424, 0.932805,
		0.927555, -0.214539, -0.305965,
		0.280415, 0.940802, 0.190421,
		22.956099, 19.536867, 12.708758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.303223, 18.776739, 13.061069>,  <22.759809, 18.878307, 12.575463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.303223, 18.776739, 13.061069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.204697, 19.159824, 13.120548>,  <23.145580, 19.389675, 13.156236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.204697, 19.159824, 13.120548>,  <23.303223, 18.776739, 13.061069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.204697, 19.159824, 13.120548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115780, -0.123249, 0.985599,
		0.962250, 0.259983, -0.080526,
		-0.246315, 0.957715, 0.148697,
		23.130802, 19.447140, 13.165157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.446594, 18.659445, 13.696947>,  <23.303223, 18.776739, 13.061069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.446594, 18.659445, 13.696947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.346714, 19.045387, 13.664206>,  <23.286785, 19.276953, 13.644561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.346714, 19.045387, 13.664206>,  <23.446594, 18.659445, 13.696947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.346714, 19.045387, 13.664206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143079, 0.120366, 0.982365,
		0.957694, 0.233586, -0.168106,
		-0.249701, 0.964857, -0.081853,
		23.271805, 19.334845, 13.639649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.887030, 19.090923, 14.088878>,  <23.446594, 18.659445, 13.696947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.887030, 19.090923, 14.088878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.546677, 19.300209, 14.069937>,  <23.342464, 19.425781, 14.058573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.546677, 19.300209, 14.069937>,  <23.887030, 19.090923, 14.088878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.546677, 19.300209, 14.069937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006542, 0.079574, 0.996808,
		0.525314, 0.848477, -0.064285,
		-0.850883, 0.523216, -0.047351,
		23.291412, 19.457174, 14.055732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.014843, 19.655851, 14.496577>,  <23.887030, 19.090923, 14.088878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.014843, 19.655851, 14.496577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.617748, 19.614361, 14.472187>,  <23.379492, 19.589466, 14.457553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.617748, 19.614361, 14.472187>,  <24.014843, 19.655851, 14.496577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.617748, 19.614361, 14.472187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087211, 0.271198, 0.958564,
		-0.082891, 0.956918, -0.278274,
		-0.992735, -0.103725, -0.060974,
		23.319927, 19.583242, 14.453895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.821205, 20.072678, 15.039211>,  <24.014843, 19.655851, 14.496577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.821205, 20.072678, 15.039211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459354, 19.919003, 14.965403>,  <23.242243, 19.826797, 14.921118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459354, 19.919003, 14.965403>,  <23.821205, 20.072678, 15.039211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.459354, 19.919003, 14.965403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335641, 0.375363, 0.863972,
		-0.262665, 0.843506, -0.468513,
		-0.904628, -0.384187, -0.184521,
		23.187965, 19.803747, 14.910047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242182, 20.569517, 15.147360>,  <23.821205, 20.072678, 15.039211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242182, 20.569517, 15.147360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093796, 20.204750, 15.217546>,  <23.004765, 19.985889, 15.259658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093796, 20.204750, 15.217546>,  <23.242182, 20.569517, 15.147360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.093796, 20.204750, 15.217546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356627, 0.314354, 0.879772,
		-0.857439, 0.263788, -0.441830,
		-0.370965, -0.911919, 0.175466,
		22.982506, 19.931173, 15.270186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518347, 20.598679, 15.376584>,  <23.242182, 20.569517, 15.147360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518347, 20.598679, 15.376584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608311, 20.232979, 15.511379>,  <22.662289, 20.013559, 15.592257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608311, 20.232979, 15.511379>,  <22.518347, 20.598679, 15.376584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608311, 20.232979, 15.511379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455805, 0.206957, 0.865685,
		-0.861195, -0.348302, -0.370174,
		0.224910, -0.914251, 0.336988,
		22.675783, 19.958704, 15.612475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.908484, 20.311298, 15.668396>,  <22.518347, 20.598679, 15.376584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.908484, 20.311298, 15.668396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210239, 20.090092, 15.809856>,  <22.391293, 19.957367, 15.894732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210239, 20.090092, 15.809856>,  <21.908484, 20.311298, 15.668396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210239, 20.090092, 15.809856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344255, 0.125413, 0.930462,
		-0.558914, -0.823677, -0.095768,
		0.754390, -0.553017, 0.353650,
		22.436556, 19.924187, 15.915952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.599665, 19.806877, 16.086906>,  <21.908484, 20.311298, 15.668396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.599665, 19.806877, 16.086906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981663, 19.811680, 16.205458>,  <22.210861, 19.814562, 16.276588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981663, 19.811680, 16.205458>,  <21.599665, 19.806877, 16.086906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981663, 19.811680, 16.205458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296575, 0.020996, 0.954779,
		0.005229, -0.999708, 0.023608,
		0.954995, 0.011994, 0.296378,
		22.268162, 19.815281, 16.294371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.601595, 19.373917, 16.627869>,  <21.599665, 19.806877, 16.086906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.601595, 19.373917, 16.627869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928082, 19.601021, 16.670652>,  <22.123974, 19.737284, 16.696323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928082, 19.601021, 16.670652>,  <21.601595, 19.373917, 16.627869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928082, 19.601021, 16.670652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151059, 0.031029, 0.988038,
		0.557651, -0.822608, 0.111092,
		0.816214, 0.567762, 0.106959,
		22.172945, 19.771349, 16.702740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058952, 19.084595, 17.173567>,  <21.601595, 19.373917, 16.627869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058952, 19.084595, 17.173567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135994, 19.474598, 17.129267>,  <22.182220, 19.708599, 17.102688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135994, 19.474598, 17.129267>,  <22.058952, 19.084595, 17.173567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135994, 19.474598, 17.129267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160956, 0.142724, 0.976587,
		0.967985, -0.170271, 0.184423,
		0.192606, 0.975006, -0.110749,
		22.193775, 19.767099, 17.096043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.533079, 19.202040, 17.723192>,  <22.058952, 19.084595, 17.173567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.533079, 19.202040, 17.723192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416969, 19.571880, 17.624523>,  <22.347303, 19.793785, 17.565321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416969, 19.571880, 17.624523>,  <22.533079, 19.202040, 17.723192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.416969, 19.571880, 17.624523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019665, 0.263481, 0.964464,
		0.956741, 0.275110, -0.094665,
		-0.290276, 0.924604, -0.246673,
		22.329885, 19.849262, 17.550522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.892187, 19.713276, 18.262039>,  <22.533079, 19.202040, 17.723192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.892187, 19.713276, 18.262039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.603043, 19.924545, 18.083824>,  <22.429556, 20.051308, 17.976894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.603043, 19.924545, 18.083824>,  <22.892187, 19.713276, 18.262039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.603043, 19.924545, 18.083824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207340, 0.449275, 0.869001,
		0.659152, 0.720545, -0.215252,
		-0.722862, 0.528173, -0.445538,
		22.386185, 20.082996, 17.950163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.959866, 20.413919, 18.686504>,  <22.892187, 19.713276, 18.262039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.959866, 20.413919, 18.686504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.609146, 20.362843, 18.501068>,  <22.398714, 20.332197, 18.389807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.609146, 20.362843, 18.501068>,  <22.959866, 20.413919, 18.686504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609146, 20.362843, 18.501068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474522, 0.385741, 0.791223,
		0.077794, 0.913728, -0.398809,
		-0.876799, -0.127691, -0.463592,
		22.346106, 20.324535, 18.361990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.662140, 21.097023, 18.672466>,  <22.959866, 20.413919, 18.686504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.662140, 21.097023, 18.672466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.371044, 20.823547, 18.650679>,  <22.196386, 20.659462, 18.637606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.371044, 20.823547, 18.650679>,  <22.662140, 21.097023, 18.672466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371044, 20.823547, 18.650679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468737, 0.437818, 0.767203,
		-0.500680, 0.583855, -0.639087,
		-0.727740, -0.683687, -0.054467,
		22.152721, 20.618441, 18.634338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154991, 21.509941, 18.846384>,  <22.662140, 21.097023, 18.672466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154991, 21.509941, 18.846384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.025906, 21.132076, 18.869955>,  <21.948454, 20.905357, 18.884098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.025906, 21.132076, 18.869955>,  <22.154991, 21.509941, 18.846384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025906, 21.132076, 18.869955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554011, 0.239005, 0.797464,
		-0.767417, 0.224704, -0.600482,
		-0.322712, -0.944661, 0.058928,
		21.929092, 20.848679, 18.887634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473162, 21.593817, 18.959730>,  <22.154991, 21.509941, 18.846384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473162, 21.593817, 18.959730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.567505, 21.220856, 19.069273>,  <21.624111, 20.997080, 19.134998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.567505, 21.220856, 19.069273>,  <21.473162, 21.593817, 18.959730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.567505, 21.220856, 19.069273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558529, 0.100549, 0.823368,
		-0.795246, -0.347155, -0.497058,
		0.235857, -0.932402, 0.273857,
		21.638262, 20.941135, 19.151430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812675, 21.311790, 19.175507>,  <21.473162, 21.593817, 18.959730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812675, 21.311790, 19.175507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099033, 21.073448, 19.321083>,  <21.270847, 20.930443, 19.408428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099033, 21.073448, 19.321083>,  <20.812675, 21.311790, 19.175507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099033, 21.073448, 19.321083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442347, 0.016229, 0.896697,
		-0.540210, -0.802926, -0.251957,
		0.715893, -0.595858, 0.363939,
		21.313801, 20.894691, 19.430265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502047, 20.802942, 19.521992>,  <20.812675, 21.311790, 19.175507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502047, 20.802942, 19.521992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872303, 20.809124, 19.673225>,  <21.094458, 20.812834, 19.763966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872303, 20.809124, 19.673225>,  <20.502047, 20.802942, 19.521992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872303, 20.809124, 19.673225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376736, -0.055920, 0.924631,
		0.035435, -0.998316, -0.045938,
		0.925643, 0.015458, 0.378083,
		21.149996, 20.813761, 19.786650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.486465, 20.425690, 20.232698>,  <20.502047, 20.802942, 19.521992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.486465, 20.425690, 20.232698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848927, 20.593510, 20.254114>,  <21.066402, 20.694201, 20.266964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848927, 20.593510, 20.254114>,  <20.486465, 20.425690, 20.232698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848927, 20.593510, 20.254114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119237, 0.131954, 0.984058,
		0.405796, -0.898091, 0.169596,
		0.906153, 0.419549, 0.053539,
		21.120771, 20.719374, 20.270176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904800, 20.000549, 20.699492>,  <20.486465, 20.425690, 20.232698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904800, 20.000549, 20.699492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038040, 20.377380, 20.715166>,  <21.117985, 20.603479, 20.724571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038040, 20.377380, 20.715166>,  <20.904800, 20.000549, 20.699492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.038040, 20.377380, 20.715166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104693, -0.078255, 0.991421,
		0.937062, -0.326139, -0.124695,
		0.333099, 0.942077, 0.039186,
		21.137970, 20.660004, 20.726921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551474, 19.959625, 21.203558>,  <20.904800, 20.000549, 20.699492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551474, 19.959625, 21.203558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406292, 20.330418, 21.165665>,  <21.319183, 20.552893, 21.142929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406292, 20.330418, 21.165665>,  <21.551474, 19.959625, 21.203558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.406292, 20.330418, 21.165665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146150, 0.043773, 0.988293,
		0.920275, 0.372548, 0.119590,
		-0.362952, 0.926980, -0.094732,
		21.297407, 20.608511, 21.137245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880316, 20.343811, 21.709461>,  <21.551474, 19.959625, 21.203558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880316, 20.343811, 21.709461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540215, 20.531590, 21.614222>,  <21.336153, 20.644257, 21.557077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540215, 20.531590, 21.614222>,  <21.880316, 20.343811, 21.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.540215, 20.531590, 21.614222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191768, 0.144986, 0.970672,
		0.490200, 0.870976, -0.033249,
		-0.850252, 0.469447, -0.238097,
		21.285139, 20.672424, 21.542793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822950, 20.848711, 22.147280>,  <21.880316, 20.343811, 21.709461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822950, 20.848711, 22.147280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445610, 20.833351, 22.015455>,  <21.219206, 20.824135, 21.936361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445610, 20.833351, 22.015455>,  <21.822950, 20.848711, 22.147280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445610, 20.833351, 22.015455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321272, 0.353850, 0.878393,
		0.082885, 0.934514, -0.346142,
		-0.943353, -0.038400, -0.329562,
		21.162603, 20.821831, 21.916586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484266, 21.533812, 22.258467>,  <21.822950, 20.848711, 22.147280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484266, 21.533812, 22.258467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177780, 21.278145, 22.231989>,  <20.993889, 21.124744, 22.216103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177780, 21.278145, 22.231989>,  <21.484266, 21.533812, 22.258467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177780, 21.278145, 22.231989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424602, 0.426284, 0.798746,
		-0.482313, 0.640118, -0.598016,
		-0.766216, -0.639165, -0.066192,
		20.947916, 21.086395, 22.212132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996193, 21.835768, 22.566769>,  <21.484266, 21.533812, 22.258467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996193, 21.835768, 22.566769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865765, 21.457825, 22.578903>,  <20.787508, 21.231058, 22.586184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865765, 21.457825, 22.578903>,  <20.996193, 21.835768, 22.566769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865765, 21.457825, 22.578903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348474, 0.149964, 0.925244,
		-0.878775, 0.291122, -0.378157,
		-0.326069, -0.944859, 0.030336,
		20.767944, 21.174366, 22.588003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340528, 21.953823, 22.786346>,  <20.996193, 21.835768, 22.566769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340528, 21.953823, 22.786346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446217, 21.574268, 22.855404>,  <20.509630, 21.346537, 22.896837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446217, 21.574268, 22.855404>,  <20.340528, 21.953823, 22.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446217, 21.574268, 22.855404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482909, 0.024790, 0.875320,
		-0.834857, -0.314647, -0.451675,
		0.264220, -0.948885, 0.172642,
		20.525482, 21.289602, 22.907196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733866, 21.605984, 23.019043>,  <20.340528, 21.953823, 22.786346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733866, 21.605984, 23.019043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.011921, 21.359592, 23.167292>,  <20.178753, 21.211758, 23.256241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.011921, 21.359592, 23.167292>,  <19.733866, 21.605984, 23.019043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011921, 21.359592, 23.167292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337463, 0.175611, 0.924813,
		-0.634748, -0.767941, -0.085795,
		0.695135, -0.615976, 0.370620,
		20.220461, 21.174799, 23.278479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477373, 21.081594, 23.448711>,  <19.733866, 21.605984, 23.019043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477373, 21.081594, 23.448711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853928, 21.150490, 23.564730>,  <20.079861, 21.191828, 23.634340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853928, 21.150490, 23.564730>,  <19.477373, 21.081594, 23.448711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.853928, 21.150490, 23.564730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318714, 0.172442, 0.932033,
		0.110512, -0.969845, 0.217228,
		0.941387, 0.172234, 0.290046,
		20.136343, 21.202162, 23.651743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473030, 20.831184, 24.140083>,  <19.477373, 21.081594, 23.448711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473030, 20.831184, 24.140083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.805225, 21.050934, 24.103252>,  <20.004543, 21.182783, 24.081154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.805225, 21.050934, 24.103252>,  <19.473030, 20.831184, 24.140083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805225, 21.050934, 24.103252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044403, 0.230063, 0.972162,
		0.555264, -0.803281, 0.215458,
		0.830488, 0.549374, -0.092078,
		20.054373, 21.215746, 24.075628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781832, 20.828651, 24.738369>,  <19.473030, 20.831184, 24.140083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781832, 20.828651, 24.738369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993031, 21.144192, 24.612555>,  <20.119749, 21.333517, 24.537066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993031, 21.144192, 24.612555>,  <19.781832, 20.828651, 24.738369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993031, 21.144192, 24.612555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115761, 0.300062, 0.946870,
		0.841321, -0.536353, 0.067113,
		0.527995, 0.788852, -0.314537,
		20.151428, 21.380848, 24.518194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370581, 20.800568, 25.139612>,  <19.781832, 20.828651, 24.738369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370581, 20.800568, 25.139612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374073, 21.174927, 24.998747>,  <20.376169, 21.399542, 24.914228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374073, 21.174927, 24.998747>,  <20.370581, 20.800568, 25.139612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374073, 21.174927, 24.998747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232931, 0.340583, 0.910904,
		0.972454, -0.089984, -0.215026,
		0.008733, 0.935899, -0.352161,
		20.376694, 21.455696, 24.893099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.097988, 21.156813, 25.356388>,  <20.370581, 20.800568, 25.139612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.097988, 21.156813, 25.356388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809338, 21.428463, 25.302652>,  <20.636148, 21.591454, 25.270411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809338, 21.428463, 25.302652>,  <21.097988, 21.156813, 25.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809338, 21.428463, 25.302652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263810, 0.449170, 0.853610,
		0.640049, 0.580546, -0.503293,
		-0.721624, 0.679126, -0.134337,
		20.592850, 21.632200, 25.262352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471535, 21.847479, 25.411619>,  <21.097988, 21.156813, 25.356388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471535, 21.847479, 25.411619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076012, 21.857594, 25.470428>,  <20.838697, 21.863663, 25.505714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076012, 21.857594, 25.470428>,  <21.471535, 21.847479, 25.411619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076012, 21.857594, 25.470428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125112, 0.677362, 0.724933,
		-0.081256, 0.735216, -0.672945,
		-0.988810, 0.025288, 0.147024,
		20.779369, 21.865179, 25.514536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170391, 22.544703, 25.531595>,  <21.471535, 21.847479, 25.411619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170391, 22.544703, 25.531595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903019, 22.316982, 25.723051>,  <20.742596, 22.180349, 25.837925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903019, 22.316982, 25.723051>,  <21.170391, 22.544703, 25.531595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903019, 22.316982, 25.723051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016297, 0.632161, 0.774666,
		-0.743595, 0.525611, -0.413279,
		-0.668432, -0.569302, 0.478638,
		20.702490, 22.146191, 25.866642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206463, 23.112448, 25.950705>,  <21.170391, 22.544703, 25.531595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.206463, 23.112448, 25.950705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266838, 22.825329, 26.222582>,  <21.303064, 22.653057, 26.385708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266838, 22.825329, 26.222582>,  <21.206463, 23.112448, 25.950705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266838, 22.825329, 26.222582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607998, 0.474736, 0.636368,
		-0.779459, -0.509306, -0.364763,
		0.150940, -0.717797, 0.679694,
		21.312120, 22.609989, 26.426491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.558886, 22.870506, 26.254578>,  <21.206463, 23.112448, 25.950705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.558886, 22.870506, 26.254578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812660, 22.773048, 26.548006>,  <20.964926, 22.714573, 26.724064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812660, 22.773048, 26.548006>,  <20.558886, 22.870506, 26.254578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812660, 22.773048, 26.548006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683094, 0.267433, 0.679604,
		-0.361764, -0.932264, 0.003235,
		0.634436, -0.243647, 0.733572,
		21.002991, 22.699955, 26.768078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223120, 22.349245, 26.631979>,  <20.558886, 22.870506, 26.254578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223120, 22.349245, 26.631979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.466106, 22.558517, 26.871065>,  <20.611898, 22.684080, 27.014517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.466106, 22.558517, 26.871065>,  <20.223120, 22.349245, 26.631979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.466106, 22.558517, 26.871065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792300, 0.345104, 0.503154,
		0.056966, -0.779221, 0.624155,
		0.607467, 0.523181, 0.597717,
		20.648346, 22.715471, 27.050381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898369, 22.393167, 27.246174>,  <20.223120, 22.349245, 26.631979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898369, 22.393167, 27.246174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.169029, 22.682331, 27.302097>,  <20.331425, 22.855829, 27.335651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.169029, 22.682331, 27.302097>,  <19.898369, 22.393167, 27.246174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.169029, 22.682331, 27.302097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665366, 0.519019, 0.536570,
		0.315327, -0.456095, 0.832194,
		0.676651, 0.722908, 0.139810,
		20.372025, 22.899204, 27.344040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254786, 22.733671, 27.137880>,  <19.898369, 22.393167, 27.246174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254786, 22.733671, 27.137880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.884457, 22.718552, 27.288305>,  <18.662260, 22.709480, 27.378561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.884457, 22.718552, 27.288305>,  <19.254786, 22.733671, 27.137880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884457, 22.718552, 27.288305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350898, -0.283754, -0.892387,
		0.140441, -0.958152, 0.249442,
		-0.925822, -0.037799, 0.376065,
		18.606710, 22.707212, 27.401125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829315, 22.042103, 26.870893>,  <19.254786, 22.733671, 27.137880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829315, 22.042103, 26.870893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.587982, 22.343822, 26.974451>,  <18.443182, 22.524855, 27.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.587982, 22.343822, 26.974451>,  <18.829315, 22.042103, 26.870893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587982, 22.343822, 26.974451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352037, 0.039392, -0.935157,
		-0.715585, -0.655349, 0.241774,
		-0.603331, 0.754298, 0.258896,
		18.406982, 22.570112, 27.052120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058191, 21.998676, 26.701597>,  <18.829315, 22.042103, 26.870893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058191, 21.998676, 26.701597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.187508, 22.376972, 26.688599>,  <18.265097, 22.603951, 26.680799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.187508, 22.376972, 26.688599>,  <18.058191, 21.998676, 26.701597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187508, 22.376972, 26.688599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364527, 0.092773, -0.926560,
		-0.873272, 0.311393, 0.374741,
		0.323290, 0.945742, -0.032495,
		18.284494, 22.660694, 26.678850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544815, 22.313063, 26.400183>,  <18.058191, 21.998676, 26.701597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544815, 22.313063, 26.400183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871925, 22.526169, 26.313093>,  <18.068192, 22.654034, 26.260839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871925, 22.526169, 26.313093>,  <17.544815, 22.313063, 26.400183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871925, 22.526169, 26.313093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328645, 0.121703, -0.936579,
		-0.472480, 0.837465, 0.274617,
		0.817774, 0.532767, -0.217726,
		18.117258, 22.685999, 26.247776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305796, 22.881599, 26.099598>,  <17.544815, 22.313063, 26.400183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305796, 22.881599, 26.099598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673775, 22.823387, 25.953987>,  <17.894562, 22.788460, 25.866621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673775, 22.823387, 25.953987>,  <17.305796, 22.881599, 26.099598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673775, 22.823387, 25.953987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354023, 0.090488, -0.930849,
		0.168406, 0.985207, 0.031724,
		0.919949, -0.145529, -0.364025,
		17.949760, 22.779728, 25.844780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336557, 23.433832, 25.676645>,  <17.305796, 22.881599, 26.099598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336557, 23.433832, 25.676645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606388, 23.163921, 25.556896>,  <17.768286, 23.001974, 25.485046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606388, 23.163921, 25.556896>,  <17.336557, 23.433832, 25.676645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606388, 23.163921, 25.556896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242486, 0.180489, -0.953218,
		0.697242, 0.715612, -0.041870,
		0.674577, -0.674776, -0.299371,
		17.808762, 22.961489, 25.467085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718826, 23.804050, 25.149525>,  <17.336557, 23.433832, 25.676645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718826, 23.804050, 25.149525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759022, 23.415977, 25.061304>,  <17.783140, 23.183134, 25.008371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759022, 23.415977, 25.061304>,  <17.718826, 23.804050, 25.149525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759022, 23.415977, 25.061304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010254, 0.220653, -0.975298,
		0.994885, 0.100270, 0.012226,
		0.100491, -0.970185, -0.220553,
		17.789169, 23.124922, 24.995138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240805, 23.806791, 24.718515>,  <17.718826, 23.804050, 25.149525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240805, 23.806791, 24.718515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058571, 23.461075, 24.633247>,  <17.949230, 23.253645, 24.582087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058571, 23.461075, 24.633247>,  <18.240805, 23.806791, 24.718515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058571, 23.461075, 24.633247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156589, 0.157925, -0.974956,
		0.876313, -0.477554, 0.063391,
		-0.455583, -0.864293, -0.213171,
		17.921896, 23.201786, 24.569296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575935, 23.565994, 24.102812>,  <18.240805, 23.806791, 24.718515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575935, 23.565994, 24.102812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257416, 23.324173, 24.094597>,  <18.066303, 23.179079, 24.089668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257416, 23.324173, 24.094597>,  <18.575935, 23.565994, 24.102812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257416, 23.324173, 24.094597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025197, 0.000775, -0.999682,
		0.604378, -0.796563, 0.014616,
		-0.796299, -0.604554, -0.020540,
		18.018526, 23.142807, 24.088434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815058, 22.857330, 23.841908>,  <18.575935, 23.565994, 24.102812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815058, 22.857330, 23.841908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.423740, 22.922089, 23.790167>,  <18.188950, 22.960943, 23.759123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.423740, 22.922089, 23.790167>,  <18.815058, 22.857330, 23.841908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423740, 22.922089, 23.790167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082528, -0.268194, -0.959823,
		-0.190080, -0.949664, 0.249012,
		-0.978294, 0.161893, -0.129352,
		18.130253, 22.970657, 23.751362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536928, 22.324797, 23.582430>,  <18.815058, 22.857330, 23.841908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.536928, 22.324797, 23.582430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282623, 22.615421, 23.478189>,  <18.130041, 22.789797, 23.415646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282623, 22.615421, 23.478189>,  <18.536928, 22.324797, 23.582430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282623, 22.615421, 23.478189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081864, -0.272241, -0.958740,
		-0.767532, -0.630864, 0.113601,
		-0.635762, 0.726564, -0.260599,
		18.091894, 22.833391, 23.400009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130604, 22.000937, 23.026464>,  <18.536928, 22.324797, 23.582430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130604, 22.000937, 23.026464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059917, 22.393284, 22.993799>,  <18.017506, 22.628693, 22.974199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059917, 22.393284, 22.993799>,  <18.130604, 22.000937, 23.026464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059917, 22.393284, 22.993799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045243, -0.074787, -0.996173,
		-0.983222, -0.179734, -0.031162,
		-0.176715, 0.980868, -0.081664,
		18.006903, 22.687544, 22.969299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814407, 22.027039, 22.306480>,  <18.130604, 22.000937, 23.026464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814407, 22.027039, 22.306480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.884476, 22.416054, 22.367781>,  <17.926516, 22.649464, 22.404560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.884476, 22.416054, 22.367781>,  <17.814407, 22.027039, 22.306480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884476, 22.416054, 22.367781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018736, 0.158922, -0.987113,
		-0.984360, 0.170041, 0.046060,
		0.175170, 0.972538, 0.153251,
		17.937027, 22.707815, 22.413755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314699, 22.482687, 21.913605>,  <17.814407, 22.027039, 22.306480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314699, 22.482687, 21.913605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609779, 22.742447, 21.987446>,  <17.786827, 22.898304, 22.031750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609779, 22.742447, 21.987446>,  <17.314699, 22.482687, 21.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609779, 22.742447, 21.987446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089617, 0.176821, -0.980155,
		-0.669156, 0.739602, 0.072243,
		0.737699, 0.649402, 0.184602,
		17.831089, 22.937267, 22.042826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251450, 23.046307, 21.412552>,  <17.314699, 22.482687, 21.913605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251450, 23.046307, 21.412552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633163, 23.046955, 21.532112>,  <17.862192, 23.047344, 21.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633163, 23.046955, 21.532112>,  <17.251450, 23.046307, 21.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633163, 23.046955, 21.532112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297973, -0.084091, -0.950863,
		0.023594, 0.996457, -0.080730,
		0.954283, 0.001621, 0.298901,
		17.919449, 23.047441, 21.621782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643679, 23.562494, 21.075214>,  <17.251450, 23.046307, 21.412552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643679, 23.562494, 21.075214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917053, 23.301208, 21.205584>,  <18.081078, 23.144436, 21.283804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917053, 23.301208, 21.205584>,  <17.643679, 23.562494, 21.075214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917053, 23.301208, 21.205584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269148, -0.189540, -0.944264,
		0.678584, 0.733064, 0.046274,
		0.683435, -0.653217, 0.325922,
		18.122084, 23.105244, 21.303360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186571, 23.623404, 20.677961>,  <17.643679, 23.562494, 21.075214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186571, 23.623404, 20.677961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271671, 23.258945, 20.819126>,  <18.322731, 23.040270, 20.903826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271671, 23.258945, 20.819126>,  <18.186571, 23.623404, 20.677961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.271671, 23.258945, 20.819126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224946, -0.305809, -0.925138,
		0.950861, 0.276209, 0.139898,
		0.212749, -0.911147, 0.352914,
		18.335497, 22.985601, 20.925001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874683, 23.472342, 20.405006>,  <18.186571, 23.623404, 20.677961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874683, 23.472342, 20.405006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717384, 23.119904, 20.510098>,  <18.623005, 22.908440, 20.573153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717384, 23.119904, 20.510098>,  <18.874683, 23.472342, 20.405006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717384, 23.119904, 20.510098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433003, -0.429555, -0.792458,
		0.811089, -0.197868, 0.550438,
		-0.393246, -0.881096, 0.262730,
		18.599411, 22.855576, 20.588917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489408, 22.980049, 20.460287>,  <18.874683, 23.472342, 20.405006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489408, 22.980049, 20.460287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150337, 22.775562, 20.403585>,  <18.946894, 22.652870, 20.369564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150337, 22.775562, 20.403585>,  <19.489408, 22.980049, 20.460287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150337, 22.775562, 20.403585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401566, -0.443706, -0.801168,
		0.346675, -0.736058, 0.581408,
		-0.847680, -0.511218, -0.141754,
		18.896032, 22.622196, 20.361059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596457, 22.244465, 20.457596>,  <19.489408, 22.980049, 20.460287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596457, 22.244465, 20.457596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257977, 22.280270, 20.247478>,  <19.054888, 22.301752, 20.121408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257977, 22.280270, 20.247478>,  <19.596457, 22.244465, 20.457596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257977, 22.280270, 20.247478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356156, -0.638240, -0.682497,
		-0.396354, -0.764615, 0.508199,
		-0.846201, 0.089512, -0.525291,
		19.004116, 22.307123, 20.089891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304070, 21.573881, 20.267591>,  <19.596457, 22.244465, 20.457596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304070, 21.573881, 20.267591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156166, 21.816032, 19.985657>,  <19.067423, 21.961323, 19.816496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156166, 21.816032, 19.985657>,  <19.304070, 21.573881, 20.267591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156166, 21.816032, 19.985657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150660, -0.709496, -0.688415,
		-0.916831, -0.360739, 0.171137,
		-0.369759, 0.605377, -0.704838,
		19.045238, 21.997646, 19.774206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125834, 21.114170, 19.781374>,  <19.304070, 21.573881, 20.267591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125834, 21.114170, 19.781374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067966, 21.451881, 19.574970>,  <19.033247, 21.654509, 19.451128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067966, 21.451881, 19.574970>,  <19.125834, 21.114170, 19.781374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067966, 21.451881, 19.574970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008217, -0.520452, -0.853852,
		-0.989446, -0.127765, 0.068356,
		-0.144668, 0.844279, -0.516009,
		19.024567, 21.705166, 19.420168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677738, 20.905231, 19.261261>,  <19.125834, 21.114170, 19.781374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677738, 20.905231, 19.261261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870060, 21.234970, 19.141743>,  <18.985453, 21.432814, 19.070032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870060, 21.234970, 19.141743>,  <18.677738, 20.905231, 19.261261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870060, 21.234970, 19.141743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034228, -0.358155, -0.933035,
		-0.876161, 0.438378, -0.200417,
		0.480802, 0.824348, -0.298796,
		19.014301, 21.482275, 19.052103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458967, 21.005688, 18.609888>,  <18.677738, 20.905231, 19.261261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458967, 21.005688, 18.609888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748940, 21.281208, 18.607836>,  <18.922922, 21.446520, 18.606604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748940, 21.281208, 18.607836>,  <18.458967, 21.005688, 18.609888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748940, 21.281208, 18.607836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083046, -0.094792, -0.992027,
		-0.683798, 0.718724, -0.125920,
		0.724930, 0.688803, -0.005132,
		18.966419, 21.487848, 18.606297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271660, 21.563061, 18.096762>,  <18.458967, 21.005688, 18.609888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271660, 21.563061, 18.096762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666958, 21.508133, 18.123642>,  <18.904137, 21.475176, 18.139771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666958, 21.508133, 18.123642>,  <18.271660, 21.563061, 18.096762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666958, 21.508133, 18.123642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004924, -0.467934, -0.883750,
		0.152801, 0.873030, -0.463109,
		0.988245, -0.137318, 0.067202,
		18.963430, 21.466938, 18.143803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.510183, 21.790789, 17.515528>,  <18.271660, 21.563061, 18.096762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.510183, 21.790789, 17.515528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.825111, 21.580593, 17.644516>,  <19.014069, 21.454475, 17.721909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.825111, 21.580593, 17.644516>,  <18.510183, 21.790789, 17.515528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.825111, 21.580593, 17.644516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145845, -0.349447, -0.925536,
		0.599043, 0.775726, -0.198488,
		0.787323, -0.525487, 0.322469,
		19.061308, 21.422947, 17.741257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.970367, 22.142462, 17.148470>,  <18.510183, 21.790789, 17.515528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.970367, 22.142462, 17.148470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.146622, 21.800743, 17.258755>,  <19.252375, 21.595713, 17.324926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.146622, 21.800743, 17.258755>,  <18.970367, 22.142462, 17.148470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146622, 21.800743, 17.258755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220615, -0.194662, -0.955738,
		0.870155, 0.481959, 0.102696,
		0.440635, -0.854297, 0.275714,
		19.278812, 21.544455, 17.341469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545853, 22.149607, 16.838831>,  <18.970367, 22.142462, 17.148470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545853, 22.149607, 16.838831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.456291, 21.765770, 16.907011>,  <19.402554, 21.535469, 16.947920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.456291, 21.765770, 16.907011>,  <19.545853, 22.149607, 16.838831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.456291, 21.765770, 16.907011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318479, -0.237330, -0.917739,
		0.921107, -0.151202, 0.358748,
		-0.223905, -0.959590, 0.170451,
		19.389120, 21.477894, 16.958147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.171465, 21.798128, 16.661882>,  <19.545853, 22.149607, 16.838831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.171465, 21.798128, 16.661882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897041, 21.507221, 16.669930>,  <19.732388, 21.332678, 16.674757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897041, 21.507221, 16.669930>,  <20.171465, 21.798128, 16.661882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897041, 21.507221, 16.669930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144408, -0.163221, -0.975964,
		0.713068, -0.666666, 0.217003,
		-0.686061, -0.727266, 0.020116,
		19.691223, 21.289042, 16.675964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.421408, 21.257559, 16.222977>,  <20.171465, 21.798128, 16.661882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.421408, 21.257559, 16.222977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028412, 21.184528, 16.208113>,  <19.792614, 21.140709, 16.199194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028412, 21.184528, 16.208113>,  <20.421408, 21.257559, 16.222977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028412, 21.184528, 16.208113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059840, -0.120320, -0.990930,
		0.176451, -0.975801, 0.129138,
		-0.982488, -0.182578, -0.037162,
		19.733665, 21.129755, 16.196964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402693, 20.672106, 15.874021>,  <20.421408, 21.257559, 16.222977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402693, 20.672106, 15.874021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.038960, 20.836216, 15.846354>,  <19.820719, 20.934683, 15.829753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.038960, 20.836216, 15.846354>,  <20.402693, 20.672106, 15.874021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038960, 20.836216, 15.846354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014431, -0.197244, -0.980248,
		-0.415816, -0.890375, 0.185281,
		-0.909335, 0.410276, -0.069169,
		19.766159, 20.959299, 15.825603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089581, 20.246367, 15.457737>,  <20.402693, 20.672106, 15.874021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089581, 20.246367, 15.457737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862957, 20.575874, 15.449600>,  <19.726982, 20.773579, 15.444718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862957, 20.575874, 15.449600>,  <20.089581, 20.246367, 15.457737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862957, 20.575874, 15.449600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169162, -0.140434, -0.975532,
		-0.806470, -0.549256, 0.218914,
		-0.566560, 0.823769, -0.020342,
		19.692989, 20.823006, 15.443498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600203, 20.088518, 14.950607>,  <20.089581, 20.246367, 15.457737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600203, 20.088518, 14.950607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.556461, 20.485252, 14.976856>,  <19.530216, 20.723293, 14.992605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.556461, 20.485252, 14.976856>,  <19.600203, 20.088518, 14.950607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.556461, 20.485252, 14.976856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122377, 0.052082, -0.991116,
		-0.986441, -0.116413, 0.115682,
		-0.109354, 0.991834, 0.065622,
		19.523655, 20.782803, 14.996543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035131, 20.240572, 14.539124>,  <19.600203, 20.088518, 14.950607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035131, 20.240572, 14.539124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.273022, 20.561115, 14.564823>,  <19.415756, 20.753441, 14.580243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.273022, 20.561115, 14.564823>,  <19.035131, 20.240572, 14.539124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.273022, 20.561115, 14.564823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094121, 0.148774, -0.984382,
		-0.798402, 0.579388, 0.163904,
		0.594724, 0.801359, 0.064249,
		19.451439, 20.801523, 14.584098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791979, 20.784531, 14.049790>,  <19.035131, 20.240572, 14.539124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791979, 20.784531, 14.049790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.145611, 20.951511, 14.133821>,  <19.357790, 21.051701, 14.184240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.145611, 20.951511, 14.133821>,  <18.791979, 20.784531, 14.049790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145611, 20.951511, 14.133821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034946, 0.389215, -0.920484,
		-0.466024, 0.821124, 0.329510,
		0.884082, 0.417452, 0.210078,
		19.410835, 21.076748, 14.196845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753525, 21.499470, 13.676156>,  <18.791979, 20.784531, 14.049790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753525, 21.499470, 13.676156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132877, 21.391205, 13.742270>,  <19.360489, 21.326246, 13.781938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132877, 21.391205, 13.742270>,  <18.753525, 21.499470, 13.676156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132877, 21.391205, 13.742270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203617, 0.120099, -0.971656,
		0.243140, 0.955153, 0.169011,
		0.948379, -0.270662, 0.165285,
		19.417391, 21.310005, 13.791855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238247, 21.984661, 13.411654>,  <18.753525, 21.499470, 13.676156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238247, 21.984661, 13.411654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.429317, 21.633247, 13.411341>,  <19.543959, 21.422400, 13.411153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.429317, 21.633247, 13.411341>,  <19.238247, 21.984661, 13.411654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.429317, 21.633247, 13.411341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292013, 0.159611, -0.943002,
		0.828586, 0.450220, 0.332787,
		0.477675, -0.878537, -0.000782,
		19.572620, 21.369686, 13.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.904196, 22.180309, 13.106616>,  <19.238247, 21.984661, 13.411654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.904196, 22.180309, 13.106616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874363, 21.782768, 13.073883>,  <19.856464, 21.544245, 13.054243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874363, 21.782768, 13.073883>,  <19.904196, 22.180309, 13.106616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874363, 21.782768, 13.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276420, 0.058241, -0.959271,
		0.958139, -0.094163, 0.270377,
		-0.074581, -0.993852, -0.081832,
		19.851988, 21.484613, 13.049334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509398, 21.911077, 12.667095>,  <19.904196, 22.180309, 13.106616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509398, 21.911077, 12.667095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.249027, 21.607761, 12.681475>,  <20.092806, 21.425772, 12.690103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.249027, 21.607761, 12.681475>,  <20.509398, 21.911077, 12.667095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249027, 21.607761, 12.681475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130061, -0.158049, -0.978828,
		0.747918, -0.632468, 0.201502,
		-0.650925, -0.758290, 0.035948,
		20.053749, 21.380274, 12.692259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852448, 21.340014, 12.309827>,  <20.509398, 21.911077, 12.667095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852448, 21.340014, 12.309827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463612, 21.250214, 12.282569>,  <20.230310, 21.196333, 12.266214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463612, 21.250214, 12.282569>,  <20.852448, 21.340014, 12.309827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463612, 21.250214, 12.282569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110485, -0.181811, -0.977107,
		0.206974, -0.957363, 0.201541,
		-0.972088, -0.224502, -0.068144,
		20.171986, 21.182863, 12.262126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826536, 20.915966, 11.811432>,  <20.852448, 21.340014, 12.309827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826536, 20.915966, 11.811432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438065, 21.009995, 11.827204>,  <20.204983, 21.066412, 11.836667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438065, 21.009995, 11.827204>,  <20.826536, 20.915966, 11.811432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438065, 21.009995, 11.827204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099678, -0.250280, -0.963029,
		-0.216503, -0.939205, 0.266497,
		-0.971180, 0.235063, 0.039432,
		20.146711, 21.080517, 11.839032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.532621, 20.432707, 11.485538>,  <20.826536, 20.915966, 11.811432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.532621, 20.432707, 11.485538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.287758, 20.748108, 11.461799>,  <20.140839, 20.937349, 11.447555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.287758, 20.748108, 11.461799>,  <20.532621, 20.432707, 11.485538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.287758, 20.748108, 11.461799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134960, -0.178140, -0.974706,
		-0.779132, -0.588666, 0.215466,
		-0.612160, 0.788504, -0.059348,
		20.104111, 20.984659, 11.443995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.960285, 20.132069, 11.101098>,  <20.532621, 20.432707, 11.485538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.960285, 20.132069, 11.101098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947201, 20.531670, 11.088939>,  <19.939350, 20.771431, 11.081643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947201, 20.531670, 11.088939>,  <19.960285, 20.132069, 11.101098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947201, 20.531670, 11.088939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150990, -0.035006, -0.987915,
		-0.987994, -0.027724, 0.151984,
		-0.032710, 0.999003, -0.030399,
		19.937387, 20.831371, 11.079819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399952, 20.276926, 10.658487>,  <19.960285, 20.132069, 11.101098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399952, 20.276926, 10.658487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627785, 20.605656, 10.653096>,  <19.764484, 20.802893, 10.649861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627785, 20.605656, 10.653096>,  <19.399952, 20.276926, 10.658487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627785, 20.605656, 10.653096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136471, -0.110728, -0.984436,
		-0.810525, 0.558879, -0.175224,
		0.569583, 0.821823, -0.013477,
		19.798660, 20.852203, 10.649054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659075, 20.714933, 10.774016>,  <19.399952, 20.276926, 10.658487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659075, 20.714933, 10.774016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286217, 20.824684, 10.679508>,  <18.062502, 20.890533, 10.622803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286217, 20.824684, 10.679508>,  <18.659075, 20.714933, 10.774016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.286217, 20.824684, 10.679508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188296, 0.190032, 0.963552,
		0.309273, 0.942659, -0.125473,
		-0.932145, 0.274375, -0.236271,
		18.006573, 20.906996, 10.608627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372313, 21.336910, 11.310247>,  <18.659075, 20.714933, 10.774016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372313, 21.336910, 11.310247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.027718, 21.207901, 11.153368>,  <17.820961, 21.130495, 11.059240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.027718, 21.207901, 11.153368>,  <18.372313, 21.336910, 11.310247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.027718, 21.207901, 11.153368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491165, 0.333319, 0.804770,
		-0.128828, 0.885934, -0.445561,
		-0.861487, -0.322521, -0.392199,
		17.769272, 21.111145, 11.035708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862133, 21.768339, 11.580966>,  <18.372313, 21.336910, 11.310247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862133, 21.768339, 11.580966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630569, 21.463329, 11.465437>,  <17.491631, 21.280323, 11.396119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630569, 21.463329, 11.465437>,  <17.862133, 21.768339, 11.580966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630569, 21.463329, 11.465437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527212, 0.079827, 0.845976,
		-0.622023, 0.642014, -0.448225,
		-0.578909, -0.762526, -0.288823,
		17.456898, 21.234571, 11.378790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271101, 21.882093, 11.900551>,  <17.862133, 21.768339, 11.580966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271101, 21.882093, 11.900551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213638, 21.504421, 11.781969>,  <17.179161, 21.277819, 11.710820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213638, 21.504421, 11.781969>,  <17.271101, 21.882093, 11.900551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213638, 21.504421, 11.781969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583835, -0.161018, 0.795745,
		-0.799061, 0.287396, -0.528114,
		-0.143658, -0.944180, -0.296455,
		17.170542, 21.221167, 11.693032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551064, 21.742559, 11.737560>,  <17.271101, 21.882093, 11.900551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551064, 21.742559, 11.737560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741558, 21.402763, 11.828391>,  <16.855854, 21.198885, 11.882890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741558, 21.402763, 11.828391>,  <16.551064, 21.742559, 11.737560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741558, 21.402763, 11.828391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617665, -0.139376, 0.773993,
		-0.625851, -0.508861, -0.591077,
		0.476236, -0.849491, 0.227077,
		16.884430, 21.147917, 11.896514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996442, 21.298203, 12.035899>,  <16.551064, 21.742559, 11.737560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996442, 21.298203, 12.035899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340714, 21.148426, 12.173899>,  <16.547277, 21.058559, 12.256699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340714, 21.148426, 12.173899>,  <15.996442, 21.298203, 12.035899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340714, 21.148426, 12.173899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420420, -0.140460, 0.896392,
		-0.287189, -0.916550, -0.278314,
		0.860680, -0.374442, 0.344998,
		16.598917, 21.036095, 12.277398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878478, 20.795654, 12.584105>,  <15.996442, 21.298203, 12.035899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878478, 20.795654, 12.584105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265888, 20.844059, 12.671113>,  <16.498335, 20.873102, 12.723318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265888, 20.844059, 12.671113>,  <15.878478, 20.795654, 12.584105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265888, 20.844059, 12.671113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207089, -0.093118, 0.973880,
		0.138108, -0.988274, -0.065127,
		0.968525, 0.121013, 0.217521,
		16.556446, 20.880363, 12.736369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039194, 20.253254, 13.077957>,  <15.878478, 20.795654, 12.584105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039194, 20.253254, 13.077957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259747, 20.585533, 13.108738>,  <16.392078, 20.784901, 13.127207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259747, 20.585533, 13.108738>,  <16.039194, 20.253254, 13.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259747, 20.585533, 13.108738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131439, -0.004587, 0.991314,
		0.823833, -0.556707, 0.106656,
		0.551382, 0.830696, 0.076952,
		16.425161, 20.834742, 13.131824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453585, 20.154957, 13.560490>,  <16.039194, 20.253254, 13.077957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453585, 20.154957, 13.560490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.471992, 20.554497, 13.565842>,  <16.483038, 20.794222, 13.569053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.471992, 20.554497, 13.565842>,  <16.453585, 20.154957, 13.560490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471992, 20.554497, 13.565842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057284, -0.010733, 0.998300,
		0.997297, -0.046710, 0.056724,
		0.046022, 0.998851, 0.013379,
		16.485800, 20.854153, 13.569856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846430, 20.331970, 14.226986>,  <16.453585, 20.154957, 13.560490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846430, 20.331970, 14.226986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673244, 20.676895, 14.121944>,  <16.569332, 20.883850, 14.058920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673244, 20.676895, 14.121944>,  <16.846430, 20.331970, 14.226986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673244, 20.676895, 14.121944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010136, 0.295963, 0.955146,
		0.901354, 0.410883, -0.136882,
		-0.432965, 0.862311, -0.262603,
		16.543354, 20.935589, 14.043163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207178, 20.954716, 14.573364>,  <16.846430, 20.331970, 14.226986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207178, 20.954716, 14.573364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.868488, 21.143555, 14.475235>,  <16.665274, 21.256857, 14.416357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.868488, 21.143555, 14.475235>,  <17.207178, 20.954716, 14.573364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.868488, 21.143555, 14.475235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122273, 0.276091, 0.953322,
		0.517790, 0.837198, -0.176048,
		-0.846725, 0.472095, -0.245324,
		16.614471, 21.285183, 14.401638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199282, 21.636580, 14.873182>,  <17.207178, 20.954716, 14.573364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199282, 21.636580, 14.873182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818333, 21.526600, 14.820436>,  <16.589764, 21.460611, 14.788789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818333, 21.526600, 14.820436>,  <17.199282, 21.636580, 14.873182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818333, 21.526600, 14.820436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236067, 0.391051, 0.889579,
		-0.193025, 0.878340, -0.437333,
		-0.952373, -0.274951, -0.131864,
		16.532621, 21.444115, 14.780877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878038, 22.230145, 14.977208>,  <17.199282, 21.636580, 14.873182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878038, 22.230145, 14.977208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.632954, 21.922066, 15.048067>,  <16.485903, 21.737219, 15.090583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.632954, 21.922066, 15.048067>,  <16.878038, 22.230145, 14.977208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632954, 21.922066, 15.048067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225437, 0.385169, 0.894887,
		-0.757469, 0.508374, -0.409629,
		-0.612714, -0.770195, 0.177147,
		16.449139, 21.691008, 15.101212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169411, 22.560045, 15.081675>,  <16.878038, 22.230145, 14.977208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169411, 22.560045, 15.081675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216118, 22.200069, 15.249710>,  <16.244143, 21.984083, 15.350532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216118, 22.200069, 15.249710>,  <16.169411, 22.560045, 15.081675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216118, 22.200069, 15.249710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173333, 0.398023, 0.900851,
		-0.977917, -0.178003, -0.109513,
		0.116766, -0.899940, 0.420088,
		16.251148, 21.930088, 15.375736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545332, 22.463646, 15.512382>,  <16.169411, 22.560045, 15.081675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545332, 22.463646, 15.512382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.824296, 22.204041, 15.633972>,  <15.991674, 22.048277, 15.706926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.824296, 22.204041, 15.633972>,  <15.545332, 22.463646, 15.512382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.824296, 22.204041, 15.633972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267599, 0.157650, 0.950546,
		-0.664838, -0.744264, -0.063728,
		0.697411, -0.649012, 0.303976,
		16.033520, 22.009336, 15.725165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225370, 22.116093, 16.024326>,  <15.545332, 22.463646, 15.512382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225370, 22.116093, 16.024326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.616305, 22.052662, 16.080421>,  <15.850866, 22.014603, 16.114079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.616305, 22.052662, 16.080421>,  <15.225370, 22.116093, 16.024326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616305, 22.052662, 16.080421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134349, 0.047328, 0.989803,
		-0.163598, -0.986211, 0.024951,
		0.977336, -0.158577, 0.140239,
		15.909506, 22.005089, 16.122494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192757, 21.681221, 16.559778>,  <15.225370, 22.116093, 16.024326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192757, 21.681221, 16.559778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570676, 21.809528, 16.533045>,  <15.797427, 21.886513, 16.517004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570676, 21.809528, 16.533045>,  <15.192757, 21.681221, 16.559778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570676, 21.809528, 16.533045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110746, -0.120655, 0.986498,
		0.308373, -0.939442, -0.149518,
		0.944797, 0.320767, -0.066833,
		15.854115, 21.905758, 16.512995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453076, 21.293530, 17.045015>,  <15.192757, 21.681221, 16.559778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453076, 21.293530, 17.045015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752183, 21.553963, 16.992964>,  <15.931647, 21.710222, 16.961733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752183, 21.553963, 16.992964>,  <15.453076, 21.293530, 17.045015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752183, 21.553963, 16.992964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138261, 0.039003, 0.989628,
		0.649406, -0.758003, -0.060854,
		0.747768, 0.651084, -0.130131,
		15.976513, 21.749289, 16.953924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019735, 21.063911, 17.401390>,  <15.453076, 21.293530, 17.045015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019735, 21.063911, 17.401390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.081661, 21.455437, 17.347790>,  <16.118816, 21.690351, 17.315630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.081661, 21.455437, 17.347790>,  <16.019735, 21.063911, 17.401390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081661, 21.455437, 17.347790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224451, 0.097244, 0.969621,
		0.962110, -0.180187, -0.204641,
		0.154813, 0.978814, -0.134003,
		16.128105, 21.749081, 17.307589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762377, 21.279428, 17.537477>,  <16.019735, 21.063911, 17.401390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762377, 21.279428, 17.537477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529804, 21.599964, 17.593750>,  <16.390261, 21.792286, 17.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529804, 21.599964, 17.593750>,  <16.762377, 21.279428, 17.537477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529804, 21.599964, 17.593750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290651, 0.043078, 0.955859,
		0.759908, 0.596656, -0.257957,
		-0.581431, 0.801341, 0.140683,
		16.355375, 21.840366, 17.635954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166796, 21.719297, 17.849146>,  <16.762377, 21.279428, 17.537477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.166796, 21.719297, 17.849146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802650, 21.858646, 17.938473>,  <16.584164, 21.942255, 17.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802650, 21.858646, 17.938473>,  <17.166796, 21.719297, 17.849146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802650, 21.858646, 17.938473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195331, -0.113988, 0.974091,
		0.364802, 0.930400, 0.035723,
		-0.910365, 0.348373, 0.223319,
		16.529541, 21.963158, 18.005468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304556, 22.000055, 18.435471>,  <17.166796, 21.719297, 17.849146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304556, 22.000055, 18.435471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909599, 21.938919, 18.451933>,  <16.672625, 21.902237, 18.461809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.909599, 21.938919, 18.451933>,  <17.304556, 22.000055, 18.435471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909599, 21.938919, 18.451933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067924, -0.174295, 0.982348,
		-0.142971, 0.972759, 0.182480,
		-0.987393, -0.152842, 0.041155,
		16.613380, 21.893066, 18.464279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930983, 22.537563, 18.906296>,  <17.304556, 22.000055, 18.435471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930983, 22.537563, 18.906296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712437, 22.202774, 18.893864>,  <16.581310, 22.001902, 18.886404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712437, 22.202774, 18.893864>,  <16.930983, 22.537563, 18.906296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712437, 22.202774, 18.893864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065687, 0.005826, 0.997823,
		-0.834968, 0.547216, -0.058161,
		-0.546363, -0.836971, -0.031080,
		16.548527, 21.951683, 18.884541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427994, 22.604034, 19.492981>,  <16.930983, 22.537563, 18.906296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427994, 22.604034, 19.492981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.440308, 22.213806, 19.405975>,  <16.447697, 21.979670, 19.353771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.440308, 22.213806, 19.405975>,  <16.427994, 22.604034, 19.492981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.440308, 22.213806, 19.405975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071322, -0.219206, 0.973068,
		-0.996978, -0.014441, -0.076328,
		0.030784, -0.975572, -0.217513,
		16.449543, 21.921135, 19.340721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767414, 22.224592, 19.902384>,  <16.427994, 22.604034, 19.492981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767414, 22.224592, 19.902384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070541, 21.978989, 19.814110>,  <16.252419, 21.831627, 19.761147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070541, 21.978989, 19.814110>,  <15.767414, 22.224592, 19.902384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070541, 21.978989, 19.814110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041984, -0.291641, 0.955606,
		-0.651114, -0.733441, -0.195232,
		0.757818, -0.614012, -0.220684,
		16.297888, 21.794785, 19.747904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460019, 21.580713, 20.068327>,  <15.767414, 22.224592, 19.902384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.460019, 21.580713, 20.068327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.859021, 21.552826, 20.063885>,  <16.098423, 21.536093, 20.061220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.859021, 21.552826, 20.063885>,  <15.460019, 21.580713, 20.068327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859021, 21.552826, 20.063885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024236, -0.485917, 0.873669,
		-0.066309, -0.871220, -0.486394,
		0.997505, -0.069720, -0.011106,
		16.158272, 21.531910, 20.060553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622171, 20.923948, 20.179491>,  <15.460019, 21.580713, 20.068327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622171, 20.923948, 20.179491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.970725, 21.096226, 20.273464>,  <16.179857, 21.199593, 20.329849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.970725, 21.096226, 20.273464>,  <15.622171, 20.923948, 20.179491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970725, 21.096226, 20.273464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003699, -0.484624, 0.874715,
		0.490588, -0.761343, -0.423886,
		0.871384, 0.430693, 0.234935,
		16.232140, 21.225433, 20.343945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936728, 20.410332, 20.576332>,  <15.622171, 20.923948, 20.179491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936728, 20.410332, 20.576332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145832, 20.738956, 20.667334>,  <16.271294, 20.936131, 20.721935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145832, 20.738956, 20.667334>,  <15.936728, 20.410332, 20.576332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145832, 20.738956, 20.667334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182150, -0.368357, 0.911666,
		0.832793, -0.435141, -0.342209,
		0.522758, 0.821563, 0.227505,
		16.302660, 20.985426, 20.735584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570145, 20.224285, 20.726957>,  <15.936728, 20.410332, 20.576332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570145, 20.224285, 20.726957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526062, 20.574936, 20.914309>,  <16.499613, 20.785326, 21.026720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526062, 20.574936, 20.914309>,  <16.570145, 20.224285, 20.726957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526062, 20.574936, 20.914309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427014, -0.383778, 0.818763,
		0.897504, 0.290239, -0.332036,
		-0.110209, 0.876627, 0.468379,
		16.493000, 20.837925, 21.054823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172800, 20.344624, 21.003307>,  <16.570145, 20.224285, 20.726957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172800, 20.344624, 21.003307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922512, 20.574753, 21.214012>,  <16.772339, 20.712830, 21.340435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922512, 20.574753, 21.214012>,  <17.172800, 20.344624, 21.003307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922512, 20.574753, 21.214012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360725, -0.385337, 0.849348,
		0.691629, 0.721472, 0.033580,
		-0.625720, 0.575321, 0.526763,
		16.734797, 20.747349, 21.372042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618315, 20.560360, 21.551346>,  <17.172800, 20.344624, 21.003307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618315, 20.560360, 21.551346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246471, 20.630386, 21.681072>,  <17.023365, 20.672401, 21.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246471, 20.630386, 21.681072>,  <17.618315, 20.560360, 21.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246471, 20.630386, 21.681072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228965, -0.415221, 0.880435,
		0.288797, 0.892717, 0.345909,
		-0.929608, 0.175066, 0.324315,
		16.967588, 20.682905, 21.778366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732906, 20.887640, 22.172815>,  <17.618315, 20.560360, 21.551346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732906, 20.887640, 22.172815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355827, 20.754692, 22.184517>,  <17.129580, 20.674923, 22.191538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355827, 20.754692, 22.184517>,  <17.732906, 20.887640, 22.172815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355827, 20.754692, 22.184517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225800, -0.570962, 0.789314,
		-0.245642, 0.750688, 0.613292,
		-0.942695, -0.332370, 0.029253,
		17.073019, 20.654982, 22.193293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449501, 21.116964, 22.846504>,  <17.732906, 20.887640, 22.172815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449501, 21.116964, 22.846504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252769, 20.794926, 22.713884>,  <17.134731, 20.601702, 22.634312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252769, 20.794926, 22.713884>,  <17.449501, 21.116964, 22.846504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252769, 20.794926, 22.713884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058536, -0.410501, 0.909979,
		-0.868722, 0.428147, 0.249023,
		-0.491829, -0.805096, -0.331549,
		17.105221, 20.553396, 22.614420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905512, 20.967052, 23.378511>,  <17.449501, 21.116964, 22.846504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905512, 20.967052, 23.378511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929417, 20.616562, 23.187241>,  <16.943760, 20.406267, 23.072477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929417, 20.616562, 23.187241>,  <16.905512, 20.967052, 23.378511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929417, 20.616562, 23.187241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242224, -0.477446, 0.844614,
		-0.968378, 0.065353, -0.240775,
		0.059760, -0.876227, -0.478178,
		16.947344, 20.353693, 23.043787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.242212, 20.641073, 23.477211>,  <16.905512, 20.967052, 23.378511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.242212, 20.641073, 23.477211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512798, 20.353451, 23.413521>,  <16.675150, 20.180878, 23.375307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512798, 20.353451, 23.413521>,  <16.242212, 20.641073, 23.477211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512798, 20.353451, 23.413521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227909, -0.409974, 0.883164,
		-0.700324, -0.561139, -0.441212,
		0.676464, -0.719058, -0.159226,
		16.715738, 20.137733, 23.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923198, 20.079149, 23.812386>,  <16.242212, 20.641073, 23.477211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923198, 20.079149, 23.812386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297775, 19.944759, 23.772001>,  <16.522522, 19.864126, 23.747770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297775, 19.944759, 23.772001>,  <15.923198, 20.079149, 23.812386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297775, 19.944759, 23.772001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091551, -0.511859, 0.854177,
		-0.338659, -0.790647, -0.510086,
		0.936445, -0.335973, -0.100961,
		16.578709, 19.843967, 23.741713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900578, 19.325687, 23.798855>,  <15.923198, 20.079149, 23.812386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900578, 19.325687, 23.798855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261280, 19.442101, 23.926693>,  <16.477701, 19.511950, 24.003395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261280, 19.442101, 23.926693>,  <15.900578, 19.325687, 23.798855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261280, 19.442101, 23.926693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115525, -0.550207, 0.826998,
		0.416528, -0.782669, -0.462530,
		0.901753, 0.291034, 0.319594,
		16.531807, 19.529411, 24.022572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978984, 18.841188, 24.243322>,  <15.900578, 19.325687, 23.798855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978984, 18.841188, 24.243322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280636, 19.088482, 24.331932>,  <16.461628, 19.236858, 24.385098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280636, 19.088482, 24.331932>,  <15.978984, 18.841188, 24.243322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280636, 19.088482, 24.331932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051917, -0.392382, 0.918336,
		0.654670, -0.681044, -0.328004,
		0.754130, 0.618236, 0.221523,
		16.506874, 19.273952, 24.398390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704525, 18.589043, 24.410290>,  <15.978984, 18.841188, 24.243322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704525, 18.589043, 24.410290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.642139, 18.200462, 24.481794>,  <16.604708, 17.967314, 24.524698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.642139, 18.200462, 24.481794>,  <16.704525, 18.589043, 24.410290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.642139, 18.200462, 24.481794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232741, -0.139740, -0.962447,
		0.959952, -0.191710, -0.204302,
		-0.155962, -0.971453, 0.178763,
		16.595350, 17.909027, 24.535423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121737, 18.300308, 23.971584>,  <16.704525, 18.589043, 24.410290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121737, 18.300308, 23.971584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.852707, 18.017998, 24.060600>,  <16.691288, 17.848612, 24.114010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.852707, 18.017998, 24.060600>,  <17.121737, 18.300308, 23.971584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852707, 18.017998, 24.060600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184153, -0.131636, -0.974043,
		0.716750, -0.696098, -0.041436,
		-0.672575, -0.705776, 0.222538,
		16.650934, 17.806265, 24.127361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326149, 17.711344, 23.587109>,  <17.121737, 18.300308, 23.971584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326149, 17.711344, 23.587109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939381, 17.666710, 23.678858>,  <16.707319, 17.639929, 23.733908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.939381, 17.666710, 23.678858>,  <17.326149, 17.711344, 23.587109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939381, 17.666710, 23.678858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198653, -0.234641, -0.951567,
		0.160002, -0.965657, 0.204712,
		-0.966921, -0.111586, 0.229373,
		16.649303, 17.633234, 23.747669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.241512, 17.192961, 23.191744>,  <17.326149, 17.711344, 23.587109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.241512, 17.192961, 23.191744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.879425, 17.319199, 23.305571>,  <16.662172, 17.394941, 23.373867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.879425, 17.319199, 23.305571>,  <17.241512, 17.192961, 23.191744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879425, 17.319199, 23.305571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316291, -0.053170, -0.947171,
		-0.283791, -0.947403, 0.147950,
		-0.905219, 0.315594, 0.284566,
		16.607859, 17.413877, 23.390940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806858, 16.744133, 22.817768>,  <17.241512, 17.192961, 23.191744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806858, 16.744133, 22.817768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.591702, 17.069397, 22.906712>,  <16.462608, 17.264555, 22.960077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.591702, 17.069397, 22.906712>,  <16.806858, 16.744133, 22.817768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.591702, 17.069397, 22.906712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369854, 0.009396, -0.929042,
		-0.757550, -0.581964, 0.295697,
		-0.537891, 0.813160, 0.222359,
		16.430334, 17.313345, 22.973419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087811, 16.624575, 22.564131>,  <16.806858, 16.744133, 22.817768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087811, 16.624575, 22.564131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129894, 17.021019, 22.596697>,  <16.155146, 17.258886, 22.616236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129894, 17.021019, 22.596697>,  <16.087811, 16.624575, 22.564131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129894, 17.021019, 22.596697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216455, 0.102728, -0.970873,
		-0.970607, 0.084524, 0.225339,
		0.105211, 0.991112, 0.081413,
		16.161457, 17.318352, 22.621120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589732, 16.931402, 22.139629>,  <16.087811, 16.624575, 22.564131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589732, 16.931402, 22.139629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881440, 17.201664, 22.182814>,  <16.056465, 17.363821, 22.208725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881440, 17.201664, 22.182814>,  <15.589732, 16.931402, 22.139629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881440, 17.201664, 22.182814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041571, 0.201248, -0.978658,
		-0.682961, 0.709219, 0.174852,
		0.729271, 0.675654, 0.107962,
		16.100222, 17.404360, 22.215202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345222, 17.509922, 21.897045>,  <15.589732, 16.931402, 22.139629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345222, 17.509922, 21.897045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741303, 17.563702, 21.881958>,  <15.978952, 17.595968, 21.872906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741303, 17.563702, 21.881958>,  <15.345222, 17.509922, 21.897045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741303, 17.563702, 21.881958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087104, 0.383607, -0.919380,
		-0.109140, 0.913657, 0.391559,
		0.990203, 0.134447, -0.037716,
		16.038364, 17.604036, 21.870644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517989, 18.302256, 21.691168>,  <15.345222, 17.509922, 21.897045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517989, 18.302256, 21.691168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857181, 18.106346, 21.610121>,  <16.060696, 17.988800, 21.561493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857181, 18.106346, 21.610121>,  <15.517989, 18.302256, 21.691168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857181, 18.106346, 21.610121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111345, 0.538349, -0.835334,
		0.518202, 0.685786, 0.511043,
		0.847979, -0.489774, -0.202615,
		16.111574, 17.959414, 21.549335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077913, 18.862354, 21.581198>,  <15.517989, 18.302256, 21.691168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077913, 18.862354, 21.581198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.152103, 18.507893, 21.411335>,  <16.196617, 18.295216, 21.309418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.152103, 18.507893, 21.411335>,  <16.077913, 18.862354, 21.581198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.152103, 18.507893, 21.411335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274177, 0.461661, -0.843621,
		0.943624, 0.040040, 0.328589,
		0.185475, -0.886152, -0.424657,
		16.207747, 18.242046, 21.283937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496786, 19.104963, 21.134960>,  <16.077913, 18.862354, 21.581198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496786, 19.104963, 21.134960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406704, 18.740395, 20.997210>,  <16.352655, 18.521654, 20.914560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406704, 18.740395, 20.997210>,  <16.496786, 19.104963, 21.134960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406704, 18.740395, 20.997210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021548, 0.358028, -0.933462,
		0.974073, -0.202798, -0.100269,
		-0.225203, -0.911421, -0.344376,
		16.339144, 18.466969, 20.893896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886278, 19.056950, 20.462572>,  <16.496786, 19.104963, 21.134960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886278, 19.056950, 20.462572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.618832, 18.761391, 20.429150>,  <16.458363, 18.584055, 20.409096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.618832, 18.761391, 20.429150>,  <16.886278, 19.056950, 20.462572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618832, 18.761391, 20.429150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105751, 0.016740, -0.994252,
		0.736048, -0.673611, 0.066946,
		-0.668618, -0.738896, -0.083556,
		16.418245, 18.539722, 20.404083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199078, 18.612659, 20.009003>,  <16.886278, 19.056950, 20.462572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199078, 18.612659, 20.009003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808086, 18.528263, 20.010843>,  <16.573492, 18.477625, 20.011948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808086, 18.528263, 20.010843>,  <17.199078, 18.612659, 20.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808086, 18.528263, 20.010843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005287, -0.046277, -0.998915,
		0.210976, -0.976392, 0.046350,
		-0.977477, -0.210992, 0.004601,
		16.514843, 18.464966, 20.012224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072777, 18.052631, 19.468414>,  <17.199078, 18.612659, 20.009003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.072777, 18.052631, 19.468414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.724571, 18.241413, 19.524221>,  <16.515648, 18.354683, 19.557705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.724571, 18.241413, 19.524221>,  <17.072777, 18.052631, 19.468414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724571, 18.241413, 19.524221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101080, 0.105989, -0.989216,
		-0.481654, -0.875228, -0.044559,
		-0.870512, 0.471956, 0.139518,
		16.463417, 18.382999, 19.566076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733183, 17.783764, 18.914185>,  <17.072777, 18.052631, 19.468414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733183, 17.783764, 18.914185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.502007, 18.085808, 19.037989>,  <16.363300, 18.267035, 19.112270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.502007, 18.085808, 19.037989>,  <16.733183, 17.783764, 18.914185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.502007, 18.085808, 19.037989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339226, 0.122655, -0.932674,
		-0.742233, -0.644024, 0.185265,
		-0.577941, 0.755108, 0.309509,
		16.328625, 18.312340, 19.130840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094051, 17.597389, 18.635927>,  <16.733183, 17.783764, 18.914185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094051, 17.597389, 18.635927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100487, 17.992752, 18.696314>,  <16.104347, 18.229969, 18.732546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100487, 17.992752, 18.696314>,  <16.094051, 17.597389, 18.635927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100487, 17.992752, 18.696314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455457, 0.141658, -0.878915,
		-0.890112, -0.054619, 0.452456,
		0.016089, 0.988408, 0.150968,
		16.105314, 18.289274, 18.741604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481186, 17.832758, 18.329227>,  <16.094051, 17.597389, 18.635927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481186, 17.832758, 18.329227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690255, 18.173550, 18.341499>,  <15.815697, 18.378025, 18.348862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690255, 18.173550, 18.341499>,  <15.481186, 17.832758, 18.329227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690255, 18.173550, 18.341499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374251, 0.261632, -0.889654,
		-0.765996, 0.453516, 0.455603,
		0.522672, 0.851981, 0.030680,
		15.847056, 18.429144, 18.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084756, 18.169760, 17.897009>,  <15.481186, 17.832758, 18.329227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084756, 18.169760, 17.897009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408675, 18.401829, 17.931938>,  <15.603026, 18.541071, 17.952896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408675, 18.401829, 17.931938>,  <15.084756, 18.169760, 17.897009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408675, 18.401829, 17.931938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267549, 0.497626, -0.825097,
		-0.522155, 0.644799, 0.558202,
		0.809798, 0.580175, 0.087322,
		15.651614, 18.575882, 17.958136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905122, 18.945881, 17.819223>,  <15.084756, 18.169760, 17.897009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905122, 18.945881, 17.819223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.288932, 18.889595, 17.721643>,  <15.519217, 18.855824, 17.663095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.288932, 18.889595, 17.721643>,  <14.905122, 18.945881, 17.819223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288932, 18.889595, 17.721643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141078, 0.509541, -0.848802,
		0.243741, 0.848863, 0.469065,
		0.959525, -0.140713, -0.243952,
		15.576789, 18.847382, 17.648458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063596, 19.587898, 17.558430>,  <14.905122, 18.945881, 17.819223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063596, 19.587898, 17.558430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322848, 19.306458, 17.441900>,  <15.478400, 19.137592, 17.371983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322848, 19.306458, 17.441900>,  <15.063596, 19.587898, 17.558430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322848, 19.306458, 17.441900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035481, 0.354235, -0.934483,
		0.760702, 0.616004, 0.204626,
		0.648131, -0.703602, -0.291324,
		15.517287, 19.095377, 17.354504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676785, 19.990978, 17.170092>,  <15.063596, 19.587898, 17.558430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676785, 19.990978, 17.170092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652419, 19.607712, 17.058226>,  <15.637800, 19.377752, 16.991106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652419, 19.607712, 17.058226>,  <15.676785, 19.990978, 17.170092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652419, 19.607712, 17.058226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127609, 0.270409, -0.954251,
		0.989952, -0.093814, 0.105799,
		-0.060913, -0.958164, -0.279664,
		15.634145, 19.320263, 16.974327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099682, 19.984602, 16.572836>,  <15.676785, 19.990978, 17.170092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099682, 19.984602, 16.572836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891850, 19.643574, 16.550337>,  <15.767152, 19.438957, 16.536837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891850, 19.643574, 16.550337>,  <16.099682, 19.984602, 16.572836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891850, 19.643574, 16.550337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132283, 0.145307, -0.980504,
		0.844122, -0.502005, -0.188278,
		-0.519576, -0.852571, -0.056250,
		15.735977, 19.387802, 16.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461435, 19.476261, 16.105209>,  <16.099682, 19.984602, 16.572836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.461435, 19.476261, 16.105209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078056, 19.365105, 16.130978>,  <15.848028, 19.298410, 16.146439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078056, 19.365105, 16.130978>,  <16.461435, 19.476261, 16.105209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078056, 19.365105, 16.130978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136973, 0.250225, -0.958450,
		0.250225, -0.927450, -0.277892,
		0.958450, 0.277892, -0.064423,
		15.790522, 19.281736, 16.150305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285467, 19.122519, 15.435300>,  <16.461435, 19.476261, 16.105209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285467, 19.122519, 15.435300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.937793, 19.225174, 15.604368>,  <15.729188, 19.286768, 15.705809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.937793, 19.225174, 15.604368>,  <16.285467, 19.122519, 15.435300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.937793, 19.225174, 15.604368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416597, 0.080419, -0.905528,
		-0.266385, -0.963156, 0.037016,
		-0.869188, 0.256639, 0.422670,
		15.677036, 19.302166, 15.731169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906995, 18.618504, 15.250696>,  <16.285467, 19.122519, 15.435300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906995, 18.618504, 15.250696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671260, 18.932537, 15.326931>,  <15.529819, 19.120958, 15.372672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671260, 18.932537, 15.326931>,  <15.906995, 18.618504, 15.250696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671260, 18.932537, 15.326931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231623, 0.061811, -0.970840,
		-0.773972, -0.616296, 0.145416,
		-0.589337, 0.785085, 0.190588,
		15.494459, 19.168062, 15.384108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288372, 18.409279, 15.013643>,  <15.906995, 18.618504, 15.250696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288372, 18.409279, 15.013643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.250733, 18.807285, 15.026821>,  <15.228150, 19.046089, 15.034728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.250733, 18.807285, 15.026821>,  <15.288372, 18.409279, 15.013643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250733, 18.807285, 15.026821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381085, -0.005427, -0.924524,
		-0.919739, -0.099550, 0.379697,
		-0.094097, 0.995017, 0.032946,
		15.222505, 19.105791, 15.036705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529602, 18.569443, 15.011544>,  <15.288372, 18.409279, 15.013643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.529602, 18.569443, 15.011544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742578, 18.882729, 14.883116>,  <14.870362, 19.070700, 14.806059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742578, 18.882729, 14.883116>,  <14.529602, 18.569443, 15.011544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742578, 18.882729, 14.883116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435701, -0.071620, -0.897238,
		-0.725724, 0.617614, 0.303113,
		0.532438, 0.783213, -0.321072,
		14.902308, 19.117693, 14.786795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126733, 18.821661, 14.506034>,  <14.529602, 18.569443, 15.011544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126733, 18.821661, 14.506034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471885, 19.009892, 14.432281>,  <14.678976, 19.122829, 14.388030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471885, 19.009892, 14.432281>,  <14.126733, 18.821661, 14.506034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471885, 19.009892, 14.432281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205761, -0.006132, -0.978583,
		-0.461628, 0.882338, 0.091535,
		0.862880, 0.470576, -0.184382,
		14.730749, 19.151064, 14.376967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940455, 19.282564, 13.989434>,  <14.126733, 18.821661, 14.506034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.940455, 19.282564, 13.989434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338767, 19.289162, 13.953318>,  <14.577754, 19.293119, 13.931647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338767, 19.289162, 13.953318>,  <13.940455, 19.282564, 13.989434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338767, 19.289162, 13.953318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090762, 0.030482, -0.995406,
		-0.013666, 0.999399, 0.031850,
		0.995779, 0.016494, -0.090291,
		14.637501, 19.294109, 13.926230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.130244, 19.788277, 13.520115>,  <13.940455, 19.282564, 13.989434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.130244, 19.788277, 13.520115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424029, 19.516865, 13.515049>,  <14.600301, 19.354017, 13.512010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424029, 19.516865, 13.515049>,  <14.130244, 19.788277, 13.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424029, 19.516865, 13.515049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137767, -0.130797, -0.981790,
		0.664518, 0.722834, -0.189545,
		0.734463, -0.678531, -0.012665,
		14.644368, 19.313305, 13.511250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470938, 19.911102, 12.915773>,  <14.130244, 19.788277, 13.520115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.470938, 19.911102, 12.915773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562238, 19.531879, 13.004400>,  <14.617018, 19.304346, 13.057576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562238, 19.531879, 13.004400>,  <14.470938, 19.911102, 12.915773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562238, 19.531879, 13.004400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029518, -0.220732, -0.974888,
		0.973155, 0.229059, -0.022398,
		0.228250, -0.948056, 0.221568,
		14.630713, 19.247463, 13.070870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020785, 19.800470, 12.475528>,  <14.470938, 19.911102, 12.915773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020785, 19.800470, 12.475528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889052, 19.431618, 12.556733>,  <14.810013, 19.210306, 12.605456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889052, 19.431618, 12.556733>,  <15.020785, 19.800470, 12.475528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889052, 19.431618, 12.556733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004300, -0.216471, -0.976280,
		0.944205, -0.320647, 0.075256,
		-0.329331, -0.922131, 0.203014,
		14.790253, 19.154978, 12.617638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568615, 19.303520, 12.221660>,  <15.020785, 19.800470, 12.475528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568615, 19.303520, 12.221660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258897, 19.056068, 12.274979>,  <15.073066, 18.907598, 12.306970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258897, 19.056068, 12.274979>,  <15.568615, 19.303520, 12.221660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258897, 19.056068, 12.274979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228979, -0.470247, -0.852312,
		0.589946, -0.629418, 0.505763,
		-0.774294, -0.618628, 0.133297,
		15.026608, 18.870480, 12.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717875, 18.799257, 11.850860>,  <15.568615, 19.303520, 12.221660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717875, 18.799257, 11.850860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323277, 18.763916, 11.906031>,  <15.086519, 18.742712, 11.939134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323277, 18.763916, 11.906031>,  <15.717875, 18.799257, 11.850860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323277, 18.763916, 11.906031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080450, -0.472147, -0.877841,
		0.142682, -0.877081, 0.458662,
		-0.986494, -0.088353, 0.137928,
		15.027329, 18.737410, 11.947409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541780, 18.031969, 11.964220>,  <15.717875, 18.799257, 11.850860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541780, 18.031969, 11.964220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201776, 18.205742, 11.845056>,  <14.997773, 18.310005, 11.773557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201776, 18.205742, 11.845056>,  <15.541780, 18.031969, 11.964220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201776, 18.205742, 11.845056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013026, -0.548040, -0.836350,
		-0.526597, -0.714791, 0.460184,
		-0.850015, 0.434426, -0.297907,
		14.946773, 18.336071, 11.755682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080332, 17.461580, 11.718554>,  <15.541780, 18.031969, 11.964220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080332, 17.461580, 11.718554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939805, 17.795918, 11.549820>,  <14.855489, 17.996519, 11.448580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939805, 17.795918, 11.549820>,  <15.080332, 17.461580, 11.718554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939805, 17.795918, 11.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064112, -0.470973, -0.879815,
		-0.934059, -0.282049, 0.219048,
		-0.351317, 0.835843, -0.421834,
		14.834410, 18.046671, 11.423270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504415, 17.244604, 11.198418>,  <15.080332, 17.461580, 11.718554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.504415, 17.244604, 11.198418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.607503, 17.620834, 11.109969>,  <14.669356, 17.846573, 11.056900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.607503, 17.620834, 11.109969>,  <14.504415, 17.244604, 11.198418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.607503, 17.620834, 11.109969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084176, -0.249838, -0.964622,
		-0.962546, 0.229990, -0.143562,
		0.257721, 0.940577, -0.221121,
		14.684819, 17.903008, 11.043633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022917, 17.452196, 10.673452>,  <14.504415, 17.244604, 11.198418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022917, 17.452196, 10.673452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315879, 17.722824, 10.642892>,  <14.491656, 17.885201, 10.624556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315879, 17.722824, 10.642892>,  <14.022917, 17.452196, 10.673452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315879, 17.722824, 10.642892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051931, -0.056377, -0.997058,
		-0.678886, 0.734218, -0.006156,
		0.732405, 0.676569, -0.076402,
		14.535601, 17.925795, 10.619971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.762852, 17.876228, 10.242655>,  <14.022917, 17.452196, 10.673452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.762852, 17.876228, 10.242655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161111, 17.911171, 10.229678>,  <14.400066, 17.932137, 10.221892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161111, 17.911171, 10.229678>,  <13.762852, 17.876228, 10.242655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161111, 17.911171, 10.229678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018728, -0.153453, -0.987978,
		-0.091285, 0.984287, -0.151150,
		0.995649, 0.087357, -0.032442,
		14.459805, 17.937378, 10.219946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859759, 18.352554, 9.764218>,  <13.762852, 17.876228, 10.242655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859759, 18.352554, 9.764218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203097, 18.149929, 9.796803>,  <14.409101, 18.028353, 9.816355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203097, 18.149929, 9.796803>,  <13.859759, 18.352554, 9.764218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203097, 18.149929, 9.796803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017847, -0.129200, -0.991458,
		0.512762, 0.852467, -0.101857,
		0.858345, -0.506564, 0.081463,
		14.460601, 17.997959, 9.821242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272465, 18.369305, 9.133361>,  <13.859759, 18.352554, 9.764218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272465, 18.369305, 9.133361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403071, 18.028473, 9.296993>,  <14.481436, 17.823975, 9.395173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403071, 18.028473, 9.296993>,  <14.272465, 18.369305, 9.133361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.403071, 18.028473, 9.296993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024328, -0.440236, -0.897552,
		0.944878, 0.283115, -0.164474,
		0.326518, -0.852079, 0.409082,
		14.501027, 17.772850, 9.419718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790476, 18.071154, 8.787206>,  <14.272465, 18.369305, 9.133361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790476, 18.071154, 8.787206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569375, 17.772522, 8.935304>,  <14.436714, 17.593342, 9.024162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569375, 17.772522, 8.935304>,  <14.790476, 18.071154, 8.787206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569375, 17.772522, 8.935304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232196, -0.288714, -0.928832,
		0.800344, -0.599384, -0.013766,
		-0.552752, -0.746581, 0.370245,
		14.403549, 17.548548, 9.046377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144168, 18.683744, 8.659700>,  <14.790476, 18.071154, 8.787206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.144168, 18.683744, 8.659700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.105277, 18.536602, 8.289786>,  <15.081943, 18.448317, 8.067838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.105277, 18.536602, 8.289786>,  <15.144168, 18.683744, 8.659700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105277, 18.536602, 8.289786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411932, 0.860738, -0.299070,
		0.906013, 0.351871, -0.235219,
		-0.097228, -0.367856, -0.924786,
		15.076109, 18.426245, 8.012350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241733, 19.196909, 8.133441>,  <15.144168, 18.683744, 8.659700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241733, 19.196909, 8.133441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.991639, 18.915634, 7.998026>,  <14.841583, 18.746868, 7.916777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.991639, 18.915634, 7.998026>,  <15.241733, 19.196909, 8.133441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991639, 18.915634, 7.998026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641372, 0.710116, -0.290476,
		0.444661, 0.035513, -0.894995,
		-0.625235, -0.703188, -0.338538,
		14.804069, 18.704678, 7.896464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084717, 19.407928, 7.450345>,  <15.241733, 19.196909, 8.133441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084717, 19.407928, 7.450345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774831, 19.220642, 7.620329>,  <14.588899, 19.108271, 7.722319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774831, 19.220642, 7.620329>,  <15.084717, 19.407928, 7.450345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774831, 19.220642, 7.620329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606092, 0.741399, -0.288063,
		-0.180189, -0.480732, -0.858155,
		-0.774716, -0.468215, 0.424959,
		14.542416, 19.080177, 7.747817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546448, 19.301407, 6.915472>,  <15.084717, 19.407928, 7.450345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546448, 19.301407, 6.915472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390895, 19.309765, 7.283892>,  <14.297563, 19.314779, 7.504944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390895, 19.309765, 7.283892>,  <14.546448, 19.301407, 6.915472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390895, 19.309765, 7.283892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603049, 0.750032, -0.271632,
		-0.696493, -0.661071, -0.279075,
		-0.388883, 0.020894, 0.921050,
		14.274230, 19.316032, 7.560207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850571, 19.388561, 6.758431>,  <14.546448, 19.301407, 6.915472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850571, 19.388561, 6.758431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955085, 19.520466, 7.121306>,  <14.017793, 19.599607, 7.339031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955085, 19.520466, 7.121306>,  <13.850571, 19.388561, 6.758431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955085, 19.520466, 7.121306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341457, 0.910643, -0.232672,
		-0.902850, -0.248972, 0.350536,
		0.261284, 0.329760, 0.907187,
		14.033470, 19.619394, 7.393463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346303, 19.907850, 7.053995>,  <13.850571, 19.388561, 6.758431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346303, 19.907850, 7.053995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.700679, 19.959820, 7.232086>,  <13.913304, 19.991001, 7.338941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.700679, 19.959820, 7.232086>,  <13.346303, 19.907850, 7.053995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.700679, 19.959820, 7.232086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094656, 0.990408, -0.100661,
		-0.454037, 0.047036, 0.889740,
		0.885941, 0.129923, 0.445229,
		13.966461, 19.998796, 7.365655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825789, 20.425421, 6.724495>,  <13.346303, 19.907850, 7.053995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825789, 20.425421, 6.724495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792174, 20.565865, 7.097517>,  <12.772005, 20.650131, 7.321331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792174, 20.565865, 7.097517>,  <12.825789, 20.425421, 6.724495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792174, 20.565865, 7.097517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929744, -0.364317, 0.053381,
		0.358488, -0.862552, 0.357058,
		-0.084038, 0.351109, 0.932555,
		12.766963, 20.671198, 7.377284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623326, 19.856451, 7.149322>,  <12.825789, 20.425421, 6.724495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623326, 19.856451, 7.149322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.522582, 20.205254, 7.317212>,  <12.462135, 20.414536, 7.417946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.522582, 20.205254, 7.317212>,  <12.623326, 19.856451, 7.149322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.522582, 20.205254, 7.317212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940478, -0.322803, 0.106300,
		0.228183, -0.367969, 0.901405,
		-0.251861, 0.872007, 0.419725,
		12.447023, 20.466856, 7.443130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.175416, 19.626133, 7.701567>,  <12.623326, 19.856451, 7.149322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.175416, 19.626133, 7.701567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.099872, 20.014126, 7.640297>,  <12.054545, 20.246922, 7.603535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.099872, 20.014126, 7.640297>,  <12.175416, 19.626133, 7.701567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.099872, 20.014126, 7.640297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966854, -0.156377, 0.201840,
		0.171828, 0.186217, 0.967366,
		-0.188860, 0.969984, -0.153175,
		12.043214, 20.305120, 7.594345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.882339, 19.912994, 8.274828>,  <12.175416, 19.626133, 7.701567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.882339, 19.912994, 8.274828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737864, 20.144417, 7.982303>,  <11.651180, 20.283270, 7.806787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737864, 20.144417, 7.982303>,  <11.882339, 19.912994, 8.274828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.737864, 20.144417, 7.982303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912863, -0.379454, 0.150655,
		-0.190337, 0.722002, 0.665196,
		-0.361184, 0.578557, -0.731312,
		11.629509, 20.317984, 7.762909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.358742, 20.165073, 8.522535>,  <11.882339, 19.912994, 8.274828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.358742, 20.165073, 8.522535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314616, 20.141956, 8.125649>,  <11.288141, 20.128086, 7.887518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314616, 20.141956, 8.125649>,  <11.358742, 20.165073, 8.522535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.314616, 20.141956, 8.125649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896023, -0.426213, 0.124443,
		-0.430086, 0.902775, -0.004765,
		-0.110313, -0.057791, -0.992215,
		11.281523, 20.124619, 7.827985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.576811, 20.383461, 8.284770>,  <11.358742, 20.165073, 8.522535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.576811, 20.383461, 8.284770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.745517, 20.167252, 7.993580>,  <10.846740, 20.037525, 7.818866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.745517, 20.167252, 7.993580>,  <10.576811, 20.383461, 8.284770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.745517, 20.167252, 7.993580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763587, -0.644685, 0.036286,
		-0.488928, 0.540568, -0.684643,
		0.421764, -0.540525, -0.727975,
		10.872046, 20.005095, 7.775187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083179, 21.063736, 8.112189>,  <10.576811, 20.383461, 8.284770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083179, 21.063736, 8.112189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.415805, 21.190788, 7.929932>,  <10.615380, 21.267019, 7.820577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.415805, 21.190788, 7.929932>,  <10.083179, 21.063736, 8.112189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.415805, 21.190788, 7.929932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512809, 0.123912, -0.849513,
		-0.213370, 0.940084, 0.265924,
		0.831565, 0.317629, -0.455645,
		10.665275, 21.286077, 7.793238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.065432, 21.856123, 7.913486>,  <10.083179, 21.063736, 8.112189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.065432, 21.856123, 7.913486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.253736, 21.600643, 7.670029>,  <10.366718, 21.447355, 7.523954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.253736, 21.600643, 7.670029>,  <10.065432, 21.856123, 7.913486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.253736, 21.600643, 7.670029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525340, 0.351306, -0.774985,
		0.708803, 0.684577, -0.170154,
		0.470761, -0.638701, -0.608643,
		10.394963, 21.409033, 7.487436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.448229, 22.185194, 7.544352>,  <10.065432, 21.856123, 7.913486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.448229, 22.185194, 7.544352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.163396, 22.455528, 7.468263>,  <8.992496, 22.617729, 7.422609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.163396, 22.455528, 7.468263>,  <9.448229, 22.185194, 7.544352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.163396, 22.455528, 7.468263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114807, 0.379374, 0.918093,
		0.692646, 0.631918, -0.347736,
		-0.712082, 0.675836, -0.190223,
		8.949771, 22.658279, 7.411196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.717552, 22.878782, 7.554347>,  <9.448229, 22.185194, 7.544352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.717552, 22.878782, 7.554347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336507, 22.891647, 7.675339>,  <9.107880, 22.899366, 7.747934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336507, 22.891647, 7.675339>,  <9.717552, 22.878782, 7.554347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.336507, 22.891647, 7.675339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279932, 0.481787, 0.830373,
		-0.119024, 0.875698, -0.467959,
		-0.952613, 0.032163, 0.302480,
		9.050723, 22.901297, 7.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.516644, 23.569767, 7.630245>,  <9.717552, 22.878782, 7.554347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.516644, 23.569767, 7.630245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.330451, 23.306042, 7.866426>,  <9.218735, 23.147806, 8.008134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.330451, 23.306042, 7.866426>,  <9.516644, 23.569767, 7.630245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.330451, 23.306042, 7.866426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384097, 0.450550, 0.805899,
		-0.797367, 0.601924, 0.043516,
		-0.465484, -0.659312, 0.590451,
		9.190805, 23.108248, 8.043561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.057716, 23.960560, 7.996668>,  <9.516644, 23.569767, 7.630245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.057716, 23.960560, 7.996668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.095992, 23.619038, 8.201357>,  <9.118958, 23.414124, 8.324170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.095992, 23.619038, 8.201357>,  <9.057716, 23.960560, 7.996668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.095992, 23.619038, 8.201357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084396, 0.519190, 0.850482,
		-0.991827, -0.038195, 0.121739,
		0.095690, -0.853805, 0.511723,
		9.124699, 23.362896, 8.354874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.840759, 24.089174, 8.634524>,  <9.057716, 23.960560, 7.996668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.840759, 24.089174, 8.634524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.120000, 23.802776, 8.635108>,  <9.287544, 23.630938, 8.635458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.120000, 23.802776, 8.635108>,  <8.840759, 24.089174, 8.634524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.120000, 23.802776, 8.635108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480331, 0.469836, 0.740633,
		-0.530975, -0.516337, 0.671909,
		0.698103, -0.715996, 0.001459,
		9.329431, 23.587978, 8.635546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.153121, 23.692970, 9.208096>,  <8.840759, 24.089174, 8.634524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.153121, 23.692970, 9.208096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.107898, 23.518456, 9.565166>,  <9.080764, 23.413746, 9.779409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.107898, 23.518456, 9.565166>,  <9.153121, 23.692970, 9.208096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.107898, 23.518456, 9.565166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962796, -0.173834, -0.206897,
		0.245444, -0.882856, -0.400402,
		-0.113057, -0.436287, 0.892677,
		9.073980, 23.387569, 9.832970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.697466, 23.941269, 9.794499>,  <9.153121, 23.692970, 9.208096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.697466, 23.941269, 9.794499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.712642, 23.548515, 9.868760>,  <9.721747, 23.312864, 9.913317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.712642, 23.548515, 9.868760>,  <9.697466, 23.941269, 9.794499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.712642, 23.548515, 9.868760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974738, 0.077285, 0.209555,
		-0.220107, 0.173011, 0.960010,
		0.037939, -0.981883, 0.185651,
		9.724024, 23.253950, 9.924456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.151622, 23.797188, 10.289059>,  <9.697466, 23.941269, 9.794499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.151622, 23.797188, 10.289059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.140460, 23.472984, 10.055034>,  <10.133763, 23.278461, 9.914618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.140460, 23.472984, 10.055034>,  <10.151622, 23.797188, 10.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.140460, 23.472984, 10.055034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992518, -0.092064, 0.080202,
		-0.118868, -0.578447, 0.807013,
		-0.027904, -0.810508, -0.585062,
		10.132089, 23.229832, 9.879515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.877827, 23.245453, 10.798941>,  <10.151622, 23.797188, 10.289059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.877827, 23.245453, 10.798941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.855163, 22.981560, 11.098685>,  <9.841564, 22.823225, 11.278532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.855163, 22.981560, 11.098685>,  <9.877827, 23.245453, 10.798941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.855163, 22.981560, 11.098685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996986, 0.002448, 0.077538,
		-0.052988, 0.751497, 0.657605,
		-0.056660, -0.659732, 0.749362,
		9.838164, 22.783640, 11.323494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.273998, 23.517965, 11.395167>,  <9.877827, 23.245453, 10.798941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.273998, 23.517965, 11.395167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.227206, 23.121975, 11.426822>,  <10.199131, 22.884380, 11.445814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.227206, 23.121975, 11.426822>,  <10.273998, 23.517965, 11.395167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.227206, 23.121975, 11.426822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992940, -0.118160, -0.010365,
		0.019612, 0.077364, 0.996810,
		-0.116981, -0.989976, 0.079135,
		10.192112, 22.824982, 11.450562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.666717, 23.289810, 11.952272>,  <10.273998, 23.517965, 11.395167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.666717, 23.289810, 11.952272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.633176, 23.018436, 11.660328>,  <10.613051, 22.855612, 11.485161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.633176, 23.018436, 11.660328>,  <10.666717, 23.289810, 11.952272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.633176, 23.018436, 11.660328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993890, -0.109694, -0.012221,
		-0.071770, -0.726427, 0.683485,
		-0.083852, -0.678432, -0.729862,
		10.608020, 22.814907, 11.441369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.675472, 23.648451, 12.520517>,  <10.666717, 23.289810, 11.952272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.675472, 23.648451, 12.520517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896167, 23.981960, 12.512428>,  <11.028584, 24.182066, 12.507575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896167, 23.981960, 12.512428>,  <10.675472, 23.648451, 12.520517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.896167, 23.981960, 12.512428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659822, 0.451201, 0.600877,
		0.510120, -0.318181, 0.799086,
		0.551736, 0.833774, -0.020223,
		11.061687, 24.232092, 12.506361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.946764, 24.079006, 12.633319>,  <10.675472, 23.648451, 12.520517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.946764, 24.079006, 12.633319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.611949, 24.041489, 12.417701>,  <9.411059, 24.018978, 12.288330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.611949, 24.041489, 12.417701>,  <9.946764, 24.079006, 12.633319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.611949, 24.041489, 12.417701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338800, -0.862449, -0.376027,
		-0.429629, -0.497378, 0.753680,
		-0.837038, -0.093795, -0.539045,
		9.360838, 24.013350, 12.255987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.902128, 23.368055, 12.528038>,  <9.946764, 24.079006, 12.633319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.902128, 23.368055, 12.528038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.647365, 23.510075, 12.254312>,  <9.494507, 23.595285, 12.090075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.647365, 23.510075, 12.254312>,  <9.902128, 23.368055, 12.528038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.647365, 23.510075, 12.254312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074498, -0.855142, -0.513013,
		-0.767331, -0.377723, 0.518197,
		-0.636909, 0.355046, -0.684317,
		9.456292, 23.616589, 12.049017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.391716, 22.952892, 12.427071>,  <9.902128, 23.368055, 12.528038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.391716, 22.952892, 12.427071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384902, 23.152081, 12.080260>,  <9.380814, 23.271593, 11.872174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384902, 23.152081, 12.080260>,  <9.391716, 22.952892, 12.427071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384902, 23.152081, 12.080260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132316, -0.858402, -0.495620,
		-0.991061, -0.123165, -0.051267,
		-0.017035, 0.497973, -0.867025,
		9.379791, 23.301472, 11.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.535966, 22.901320, 12.372828>,  <9.391716, 22.952892, 12.427071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.535966, 22.901320, 12.372828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.280118, 22.851154, 12.069471>,  <8.126610, 22.821056, 11.887457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.280118, 22.851154, 12.069471>,  <8.535966, 22.901320, 12.372828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.280118, 22.851154, 12.069471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753052, 0.095781, -0.650953,
		0.154278, -0.987470, 0.033180,
		-0.639619, -0.125414, -0.758393,
		8.088232, 22.813530, 11.841953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.747379, 22.290142, 11.954637>,  <8.535966, 22.901320, 12.372828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.747379, 22.290142, 11.954637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.552239, 22.555984, 11.728257>,  <8.435155, 22.715490, 11.592429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.552239, 22.555984, 11.728257>,  <8.747379, 22.290142, 11.954637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.552239, 22.555984, 11.728257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763502, 0.010578, -0.645719,
		-0.423163, -0.747117, -0.512590,
		-0.487850, 0.664608, -0.565949,
		8.405884, 22.755367, 11.558473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.519053, 21.994556, 11.305104>,  <8.747379, 22.290142, 11.954637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.519053, 21.994556, 11.305104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.543937, 22.389854, 11.249245>,  <8.558867, 22.627033, 11.215729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.543937, 22.389854, 11.249245>,  <8.519053, 21.994556, 11.305104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.543937, 22.389854, 11.249245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741216, -0.139447, -0.656622,
		-0.668377, -0.062662, -0.741178,
		0.062209, 0.988245, -0.139649,
		8.562599, 22.686329, 11.207350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.450024, 22.319771, 10.620520>,  <8.519053, 21.994556, 11.305104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.450024, 22.319771, 10.620520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.721913, 22.522091, 10.832987>,  <8.885047, 22.643484, 10.960467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.721913, 22.522091, 10.832987>,  <8.450024, 22.319771, 10.620520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.721913, 22.522091, 10.832987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719288, -0.317973, -0.617671,
		-0.143522, 0.801909, -0.579951,
		0.679725, 0.505801, 0.531168,
		8.925831, 22.673832, 10.992337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.718166, 16.878662, 18.847235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.983482, 17.175343, 18.807381>,  <21.142672, 17.353352, 18.783468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.983482, 17.175343, 18.807381>,  <20.718166, 16.878662, 18.847235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983482, 17.175343, 18.807381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062206, -0.078033, -0.995008,
		-0.745775, 0.666175, -0.005620,
		0.663288, 0.741702, -0.099635,
		21.182468, 17.397854, 18.777491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480213, 17.251970, 18.250454>,  <20.718166, 16.878662, 18.847235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480213, 17.251970, 18.250454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.865677, 17.341885, 18.308195>,  <21.096954, 17.395832, 18.342840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.865677, 17.341885, 18.308195>,  <20.480213, 17.251970, 18.250454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865677, 17.341885, 18.308195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167630, -0.088075, -0.981908,
		-0.208003, 0.970420, -0.122555,
		0.963657, 0.224784, 0.144352,
		21.154774, 17.409319, 18.351501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523417, 17.656754, 17.754534>,  <20.480213, 17.251970, 18.250454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523417, 17.656754, 17.754534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.909485, 17.588753, 17.834076>,  <21.141127, 17.547953, 17.881802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.909485, 17.588753, 17.834076>,  <20.523417, 17.656754, 17.754534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.909485, 17.588753, 17.834076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189894, -0.067597, -0.979475,
		0.179956, 0.983122, -0.032960,
		0.965172, -0.170003, 0.198854,
		21.199036, 17.537752, 17.893732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953213, 18.214619, 17.427135>,  <20.523417, 17.656754, 17.754534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953213, 18.214619, 17.427135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.176445, 17.883526, 17.450491>,  <21.310385, 17.684870, 17.464504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.176445, 17.883526, 17.450491>,  <20.953213, 18.214619, 17.427135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.176445, 17.883526, 17.450491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131872, 0.019002, -0.991085,
		0.819242, 0.560804, 0.119759,
		0.558079, -0.827731, 0.058387,
		21.343868, 17.635206, 17.468006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.554829, 18.339878, 17.017420>,  <20.953213, 18.214619, 17.427135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.554829, 18.339878, 17.017420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.607517, 17.945267, 17.056225>,  <21.639130, 17.708500, 17.079508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.607517, 17.945267, 17.056225>,  <21.554829, 18.339878, 17.017420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607517, 17.945267, 17.056225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515961, -0.015332, -0.856475,
		0.846424, 0.162870, 0.506991,
		0.131721, -0.986528, 0.097012,
		21.647034, 17.649307, 17.085329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342302, 18.231281, 16.844814>,  <21.554829, 18.339878, 17.017420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342302, 18.231281, 16.844814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.115562, 17.903221, 16.813738>,  <21.979519, 17.706385, 16.795092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.115562, 17.903221, 16.813738>,  <22.342302, 18.231281, 16.844814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.115562, 17.903221, 16.813738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258528, -0.087554, -0.962028,
		0.782205, -0.565410, 0.261662,
		-0.566850, -0.820150, -0.077689,
		21.945507, 17.657177, 16.790432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.666178, 17.938463, 16.311646>,  <22.342302, 18.231281, 16.844814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.666178, 17.938463, 16.311646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.324429, 17.734684, 16.352659>,  <22.119379, 17.612417, 16.377268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.324429, 17.734684, 16.352659>,  <22.666178, 17.938463, 16.311646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324429, 17.734684, 16.352659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049872, -0.276780, -0.959638,
		0.517263, -0.814775, 0.261880,
		-0.854372, -0.509446, 0.102534,
		22.068117, 17.581850, 16.383419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832539, 17.254288, 16.113779>,  <22.666178, 17.938463, 16.311646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832539, 17.254288, 16.113779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.440517, 17.308548, 16.055681>,  <22.205305, 17.341105, 16.020823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.440517, 17.308548, 16.055681>,  <22.832539, 17.254288, 16.113779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440517, 17.308548, 16.055681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119955, -0.178944, -0.976519,
		-0.158443, -0.974465, 0.159105,
		-0.980055, 0.135637, -0.145244,
		22.146502, 17.349243, 16.012108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653992, 16.691389, 15.703704>,  <22.832539, 17.254288, 16.113779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653992, 16.691389, 15.703704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.378288, 16.976429, 15.651361>,  <22.212866, 17.147453, 15.619956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.378288, 16.976429, 15.651361>,  <22.653992, 16.691389, 15.703704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378288, 16.976429, 15.651361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049279, -0.134083, -0.989744,
		-0.722838, -0.688638, 0.057302,
		-0.689258, 0.712601, -0.130856,
		22.171511, 17.190208, 15.612104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.245081, 16.479708, 15.192060>,  <22.653992, 16.691389, 15.703704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.245081, 16.479708, 15.192060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.136467, 16.864670, 15.189480>,  <22.071299, 17.095648, 15.187932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.136467, 16.864670, 15.189480>,  <22.245081, 16.479708, 15.192060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.136467, 16.864670, 15.189480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192390, -0.060845, -0.979431,
		-0.943003, -0.264708, 0.201679,
		-0.271534, 0.962407, -0.006450,
		22.055006, 17.153393, 15.187545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.533682, 16.461716, 14.887876>,  <22.245081, 16.479708, 15.192060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.533682, 16.461716, 14.887876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.671661, 16.835705, 14.854805>,  <21.754450, 17.060099, 14.834963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.671661, 16.835705, 14.854805>,  <21.533682, 16.461716, 14.887876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671661, 16.835705, 14.854805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374070, 0.056153, -0.925699,
		-0.860860, 0.350248, 0.369115,
		0.344951, 0.934972, -0.082678,
		21.775146, 17.116196, 14.830002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895145, 16.900949, 14.701190>,  <21.533682, 16.461716, 14.887876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895145, 16.900949, 14.701190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.216259, 17.116882, 14.599907>,  <21.408928, 17.246443, 14.539137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.216259, 17.116882, 14.599907>,  <20.895145, 16.900949, 14.701190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.216259, 17.116882, 14.599907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385188, 0.145359, -0.911318,
		-0.455155, 0.829126, 0.324630,
		0.802785, 0.539834, -0.253209,
		21.457094, 17.278833, 14.523944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655510, 17.476406, 14.467958>,  <20.895145, 16.900949, 14.701190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655510, 17.476406, 14.467958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.015308, 17.445526, 14.295937>,  <21.231188, 17.426998, 14.192723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.015308, 17.445526, 14.295937>,  <20.655510, 17.476406, 14.467958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015308, 17.445526, 14.295937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389679, 0.303454, -0.869520,
		0.197631, 0.949713, 0.242872,
		0.899495, -0.077202, -0.430055,
		21.285156, 17.422365, 14.166920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.769142, 18.124643, 14.177046>,  <20.655510, 17.476406, 14.467958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.769142, 18.124643, 14.177046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.013390, 17.867157, 13.992537>,  <21.159939, 17.712666, 13.881831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.013390, 17.867157, 13.992537>,  <20.769142, 18.124643, 14.177046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013390, 17.867157, 13.992537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204037, 0.434924, -0.877046,
		0.765187, 0.629659, 0.134232,
		0.610621, -0.643716, -0.461272,
		21.196575, 17.674042, 13.854155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121496, 18.541405, 13.725001>,  <20.769142, 18.124643, 14.177046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121496, 18.541405, 13.725001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.158749, 18.169819, 13.581696>,  <21.181101, 17.946867, 13.495712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.158749, 18.169819, 13.581696>,  <21.121496, 18.541405, 13.725001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158749, 18.169819, 13.581696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308451, 0.315206, -0.897498,
		0.946670, 0.194094, -0.257184,
		0.093133, -0.928963, -0.358265,
		21.186689, 17.891130, 13.474216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630861, 18.549257, 13.160219>,  <21.121496, 18.541405, 13.725001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630861, 18.549257, 13.160219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.389992, 18.236431, 13.096018>,  <21.245470, 18.048735, 13.057497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.389992, 18.236431, 13.096018>,  <21.630861, 18.549257, 13.160219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.389992, 18.236431, 13.096018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309249, 0.413836, -0.856215,
		0.736039, -0.465954, -0.491054,
		-0.602173, -0.782065, -0.160503,
		21.209339, 18.001812, 13.047867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737461, 18.330725, 12.506049>,  <21.630861, 18.549257, 13.160219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737461, 18.330725, 12.506049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.386124, 18.154190, 12.579520>,  <21.175322, 18.048269, 12.623603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.386124, 18.154190, 12.579520>,  <21.737461, 18.330725, 12.506049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.386124, 18.154190, 12.579520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329748, 0.281188, -0.901221,
		0.346095, -0.852147, -0.392509,
		-0.878342, -0.441337, 0.183676,
		21.122622, 18.021790, 12.634624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568323, 17.898123, 11.913002>,  <21.737461, 18.330725, 12.506049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568323, 17.898123, 11.913002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.216995, 17.949650, 12.097157>,  <21.006199, 17.980566, 12.207651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.216995, 17.949650, 12.097157>,  <21.568323, 17.898123, 11.913002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.216995, 17.949650, 12.097157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410875, 0.288917, -0.864702,
		-0.244404, -0.948648, -0.200833,
		-0.878321, 0.128819, 0.460388,
		20.953499, 17.988295, 12.235274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160276, 17.560728, 11.542979>,  <21.568323, 17.898123, 11.913002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160276, 17.560728, 11.542979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.871910, 17.769585, 11.725254>,  <20.698891, 17.894897, 11.834619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.871910, 17.769585, 11.725254>,  <21.160276, 17.560728, 11.542979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871910, 17.769585, 11.725254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379289, 0.253049, -0.890004,
		-0.580018, -0.814454, 0.015615,
		-0.720916, 0.522141, 0.455686,
		20.655636, 17.926228, 11.861959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377844, 17.384951, 11.299605>,  <21.160276, 17.560728, 11.542979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377844, 17.384951, 11.299605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.360691, 17.759571, 11.438764>,  <20.350399, 17.984343, 11.522259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.360691, 17.759571, 11.438764>,  <20.377844, 17.384951, 11.299605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360691, 17.759571, 11.438764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355013, 0.311206, -0.881542,
		-0.933877, -0.161312, 0.319142,
		-0.042884, 0.936551, 0.347896,
		20.347826, 18.040537, 11.543133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758049, 17.625681, 11.001127>,  <20.377844, 17.384951, 11.299605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758049, 17.625681, 11.001127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.955578, 17.953568, 11.117197>,  <20.074095, 18.150299, 11.186839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.955578, 17.953568, 11.117197>,  <19.758049, 17.625681, 11.001127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.955578, 17.953568, 11.117197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283496, 0.467238, -0.837447,
		-0.822051, 0.331288, 0.463120,
		0.493824, 0.819717, 0.290175,
		20.103725, 18.199482, 11.204249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284794, 18.158422, 10.867608>,  <19.758049, 17.625681, 11.001127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284794, 18.158422, 10.867608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.641155, 18.336620, 10.902991>,  <19.854973, 18.443539, 10.924221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.641155, 18.336620, 10.902991>,  <19.284794, 18.158422, 10.867608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.641155, 18.336620, 10.902991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277209, 0.687612, -0.671078,
		-0.359787, 0.573344, 0.736091,
		0.890903, 0.445496, 0.088458,
		19.908426, 18.470268, 10.929528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709158, 18.346567, 10.512789>,  <19.284794, 18.158422, 10.867608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709158, 18.346567, 10.512789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316544, 18.281208, 10.473012>,  <18.080975, 18.241993, 10.449145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316544, 18.281208, 10.473012>,  <18.709158, 18.346567, 10.512789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316544, 18.281208, 10.473012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108885, 0.049869, 0.992803,
		-0.157261, 0.985299, -0.066739,
		-0.981536, -0.163396, -0.099442,
		18.022083, 18.232189, 10.443179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365808, 18.860201, 10.970470>,  <18.709158, 18.346567, 10.512789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365808, 18.860201, 10.970470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.087421, 18.583775, 10.892443>,  <17.920389, 18.417919, 10.845626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.087421, 18.583775, 10.892443>,  <18.365808, 18.860201, 10.970470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087421, 18.583775, 10.892443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363496, 0.104779, 0.925684,
		-0.619271, 0.715156, -0.324123,
		-0.695970, -0.691067, -0.195070,
		17.878630, 18.376455, 10.833921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754030, 19.123697, 11.096642>,  <18.365808, 18.860201, 10.970470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754030, 19.123697, 11.096642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.713833, 18.729771, 11.153270>,  <17.689714, 18.493416, 11.187246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.713833, 18.729771, 11.153270>,  <17.754030, 19.123697, 11.096642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713833, 18.729771, 11.153270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423558, 0.171098, 0.889564,
		-0.900278, 0.029432, -0.434320,
		-0.100493, -0.984814, 0.141570,
		17.683685, 18.434326, 11.195741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120003, 19.098684, 11.553035>,  <17.754030, 19.123697, 11.096642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120003, 19.098684, 11.553035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262375, 18.725060, 11.541423>,  <17.347797, 18.500885, 11.534456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262375, 18.725060, 11.541423>,  <17.120003, 19.098684, 11.553035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262375, 18.725060, 11.541423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489362, -0.212758, 0.845729,
		-0.796140, -0.286814, -0.532822,
		0.355929, -0.934062, -0.029029,
		17.369154, 18.444841, 11.532714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563444, 18.632879, 11.785305>,  <17.120003, 19.098684, 11.553035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563444, 18.632879, 11.785305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.914219, 18.449871, 11.844163>,  <17.124683, 18.340065, 11.879478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.914219, 18.449871, 11.844163>,  <16.563444, 18.632879, 11.785305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914219, 18.449871, 11.844163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289226, -0.257875, 0.921872,
		-0.383835, -0.850982, -0.358469,
		0.876937, -0.457525, 0.147145,
		17.177301, 18.312614, 11.888307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452158, 17.957495, 12.172166>,  <16.563444, 18.632879, 11.785305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452158, 17.957495, 12.172166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.833256, 18.055500, 12.243999>,  <17.061914, 18.114304, 12.287098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.833256, 18.055500, 12.243999>,  <16.452158, 17.957495, 12.172166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833256, 18.055500, 12.243999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088320, -0.342206, 0.935465,
		0.290656, -0.907118, -0.304395,
		0.952743, 0.245014, 0.179581,
		17.119078, 18.129004, 12.297873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752493, 17.404533, 12.572881>,  <16.452158, 17.957495, 12.172166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752493, 17.404533, 12.572881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.970104, 17.734962, 12.631718>,  <17.100672, 17.933220, 12.667020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.970104, 17.734962, 12.631718>,  <16.752493, 17.404533, 12.572881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970104, 17.734962, 12.631718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142642, -0.263806, 0.953970,
		0.826853, -0.498006, -0.261351,
		0.544029, 0.826073, 0.147092,
		17.133312, 17.982784, 12.675845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276470, 17.213951, 13.099519>,  <16.752493, 17.404533, 12.572881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276470, 17.213951, 13.099519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.336361, 17.609127, 13.115290>,  <17.372295, 17.846233, 13.124752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.336361, 17.609127, 13.115290>,  <17.276470, 17.213951, 13.099519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336361, 17.609127, 13.115290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194021, -0.068460, 0.978606,
		0.969504, -0.138874, -0.201931,
		0.149727, 0.987941, 0.039428,
		17.381279, 17.905510, 13.127118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986408, 17.408625, 13.267714>,  <17.276470, 17.213951, 13.099519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986408, 17.408625, 13.267714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.751663, 17.714779, 13.373377>,  <17.610817, 17.898472, 13.436775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.751663, 17.714779, 13.373377>,  <17.986408, 17.408625, 13.267714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751663, 17.714779, 13.373377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383881, -0.024237, 0.923064,
		0.712902, 0.643117, -0.279593,
		-0.586862, 0.765384, 0.264159,
		17.575605, 17.944395, 13.452624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414183, 17.800865, 13.660980>,  <17.986408, 17.408625, 13.267714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414183, 17.800865, 13.660980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.051052, 17.915806, 13.783146>,  <17.833174, 17.984770, 13.856445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.051052, 17.915806, 13.783146>,  <18.414183, 17.800865, 13.660980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051052, 17.915806, 13.783146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332482, 0.049395, 0.941815,
		0.255546, 0.956551, -0.140381,
		-0.907828, 0.287351, 0.305413,
		17.778704, 18.002010, 13.874770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527264, 18.344259, 14.256926>,  <18.414183, 17.800865, 13.660980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527264, 18.344259, 14.256926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.165520, 18.177280, 14.292404>,  <17.948473, 18.077093, 14.313691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.165520, 18.177280, 14.292404>,  <18.527264, 18.344259, 14.256926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165520, 18.177280, 14.292404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187871, -0.202813, 0.961026,
		-0.383191, 0.885778, 0.261843,
		-0.904361, -0.417449, 0.088696,
		17.894211, 18.052046, 14.319013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268246, 18.614952, 14.941661>,  <18.527264, 18.344259, 14.256926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268246, 18.614952, 14.941661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.057045, 18.289314, 14.844942>,  <17.930325, 18.093931, 14.786911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.057045, 18.289314, 14.844942>,  <18.268246, 18.614952, 14.941661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.057045, 18.289314, 14.844942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001184, -0.285427, 0.958400,
		-0.849243, 0.505750, 0.151669,
		-0.528001, -0.814094, -0.241798,
		17.898645, 18.045086, 14.772403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.799990, 18.619032, 15.522079>,  <18.268246, 18.614952, 14.941661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.799990, 18.619032, 15.522079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.776615, 18.254475, 15.359131>,  <17.762590, 18.035740, 15.261362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.776615, 18.254475, 15.359131>,  <17.799990, 18.619032, 15.522079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776615, 18.254475, 15.359131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282740, -0.376250, 0.882324,
		-0.957415, 0.166739, -0.235700,
		-0.058436, -0.911391, -0.407371,
		17.759085, 17.981056, 15.236919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154671, 18.306036, 15.691085>,  <17.799990, 18.619032, 15.522079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154671, 18.306036, 15.691085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.416031, 18.019585, 15.592916>,  <17.572847, 17.847713, 15.534016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.416031, 18.019585, 15.592916>,  <17.154671, 18.306036, 15.691085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416031, 18.019585, 15.592916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111397, -0.411623, 0.904520,
		-0.748773, -0.563673, -0.348729,
		0.653398, -0.716128, -0.245421,
		17.612051, 17.804747, 15.519290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802893, 17.825363, 16.001621>,  <17.154671, 18.306036, 15.691085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802893, 17.825363, 16.001621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.173630, 17.685516, 15.946882>,  <17.396072, 17.601608, 15.914039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.173630, 17.685516, 15.946882>,  <16.802893, 17.825363, 16.001621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173630, 17.685516, 15.946882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033791, -0.440696, 0.897020,
		-0.373918, -0.826775, -0.420271,
		0.926846, -0.349613, -0.136846,
		17.451683, 17.580631, 15.905828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780214, 17.078762, 16.193634>,  <16.802893, 17.825363, 16.001621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.780214, 17.078762, 16.193634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.161812, 17.197430, 16.210978>,  <17.390770, 17.268631, 16.221384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.161812, 17.197430, 16.210978>,  <16.780214, 17.078762, 16.193634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161812, 17.197430, 16.210978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094740, -0.435484, 0.895197,
		0.284461, -0.849906, -0.443557,
		0.953995, 0.296672, 0.043358,
		17.448009, 17.286430, 16.223986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167944, 16.467693, 16.423296>,  <16.780214, 17.078762, 16.193634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167944, 16.467693, 16.423296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.413574, 16.769558, 16.515730>,  <17.560953, 16.950676, 16.571190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.413574, 16.769558, 16.515730>,  <17.167944, 16.467693, 16.423296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413574, 16.769558, 16.515730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307896, -0.498654, 0.810274,
		0.726713, -0.426418, -0.538568,
		0.614075, 0.754660, 0.231086,
		17.597797, 16.995956, 16.585056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688757, 16.089436, 16.832064>,  <17.167944, 16.467693, 16.423296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688757, 16.089436, 16.832064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.748753, 16.473690, 16.925600>,  <17.784750, 16.704243, 16.981722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.748753, 16.473690, 16.925600>,  <17.688757, 16.089436, 16.832064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748753, 16.473690, 16.925600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357748, -0.273224, 0.892953,
		0.921694, -0.050276, -0.384646,
		0.149989, 0.960636, 0.233843,
		17.793749, 16.761881, 16.995752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.374840, 16.124910, 17.024221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.188049, 16.435707, 17.193083>,  <18.075975, 16.622185, 17.294399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.188049, 16.435707, 17.193083>,  <18.374840, 16.124910, 17.024221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.188049, 16.435707, 17.193083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389050, -0.248187, 0.887155,
		0.794086, 0.578521, -0.186391,
		-0.466978, 0.776992, 0.422155,
		18.047956, 16.668804, 17.319729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857775, 16.442741, 17.420584>,  <18.374840, 16.124910, 17.024221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857775, 16.442741, 17.420584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.507851, 16.570415, 17.566368>,  <18.297897, 16.647020, 17.653839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.507851, 16.570415, 17.566368>,  <18.857775, 16.442741, 17.420584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.507851, 16.570415, 17.566368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362983, -0.066418, 0.929426,
		0.320865, 0.945362, -0.057755,
		-0.874808, 0.319184, 0.364461,
		18.245409, 16.666170, 17.675707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.027582, 17.013460, 17.885300>,  <18.857775, 16.442741, 17.420584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.027582, 17.013460, 17.885300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.650867, 16.912727, 17.974403>,  <18.424839, 16.852287, 18.027866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.650867, 16.912727, 17.974403>,  <19.027582, 17.013460, 17.885300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.650867, 16.912727, 17.974403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154638, 0.263861, 0.952084,
		-0.298545, 0.931105, -0.209557,
		-0.941785, -0.251834, 0.222759,
		18.368332, 16.837177, 18.041231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838060, 17.447989, 18.358097>,  <19.027582, 17.013460, 17.885300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838060, 17.447989, 18.358097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.590805, 17.141148, 18.426748>,  <18.442451, 16.957043, 18.467939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.590805, 17.141148, 18.426748>,  <18.838060, 17.447989, 18.358097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590805, 17.141148, 18.426748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040532, 0.249148, 0.967617,
		-0.785023, 0.591165, -0.185101,
		-0.618139, -0.767104, 0.171626,
		18.405363, 16.911016, 18.478235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465002, 17.733273, 18.815899>,  <18.838060, 17.447989, 18.358097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.465002, 17.733273, 18.815899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.394577, 17.342026, 18.860233>,  <18.352322, 17.107277, 18.886833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.394577, 17.342026, 18.860233>,  <18.465002, 17.733273, 18.815899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394577, 17.342026, 18.860233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008043, 0.114020, 0.993446,
		-0.984346, 0.174019, -0.027942,
		-0.176065, -0.978119, 0.110835,
		18.341757, 17.048590, 18.893484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975168, 17.638258, 19.377947>,  <18.465002, 17.733273, 18.815899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975168, 17.638258, 19.377947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.158638, 17.282887, 19.370842>,  <18.268721, 17.069664, 19.366579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.158638, 17.282887, 19.370842>,  <17.975168, 17.638258, 19.377947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158638, 17.282887, 19.370842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132638, 0.048688, 0.989968,
		-0.878649, -0.456429, 0.140171,
		0.458675, -0.888426, -0.017760,
		18.296240, 17.016359, 19.365515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637453, 17.143505, 19.877951>,  <17.975168, 17.638258, 19.377947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637453, 17.143505, 19.877951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.993721, 16.978550, 19.801382>,  <18.207481, 16.879576, 19.755440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.993721, 16.978550, 19.801382>,  <17.637453, 17.143505, 19.877951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.993721, 16.978550, 19.801382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144710, -0.141998, 0.979232,
		-0.431007, -0.899873, -0.066796,
		0.890669, -0.412390, -0.191422,
		18.260921, 16.854834, 19.743956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652603, 16.536728, 20.359655>,  <17.637453, 17.143505, 19.877951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652603, 16.536728, 20.359655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.033951, 16.573532, 20.244678>,  <18.262758, 16.595615, 20.175692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.033951, 16.573532, 20.244678>,  <17.652603, 16.536728, 20.359655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033951, 16.573532, 20.244678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301683, -0.262699, 0.916502,
		0.008817, -0.960481, -0.278206,
		0.953368, 0.092011, -0.287444,
		18.319962, 16.601135, 20.158445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985312, 15.946956, 20.447979>,  <17.652603, 16.536728, 20.359655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985312, 15.946956, 20.447979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.265614, 16.231857, 20.464149>,  <18.433796, 16.402798, 20.473852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.265614, 16.231857, 20.464149>,  <17.985312, 15.946956, 20.447979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265614, 16.231857, 20.464149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254138, -0.302180, 0.918750,
		0.666600, -0.633546, -0.392765,
		0.700756, 0.712255, 0.040425,
		18.475840, 16.445534, 20.476276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605221, 15.646377, 20.609201>,  <17.985312, 15.946956, 20.447979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605221, 15.646377, 20.609201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.603615, 16.030834, 20.719610>,  <18.602652, 16.261509, 20.785854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.603615, 16.030834, 20.719610>,  <18.605221, 15.646377, 20.609201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603615, 16.030834, 20.719610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220917, -0.268350, 0.937648,
		0.975284, 0.064744, -0.211255,
		-0.004016, 0.961143, 0.276020,
		18.602409, 16.319178, 20.802416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.076529, 15.655239, 21.024147>,  <18.605221, 15.646377, 20.609201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.076529, 15.655239, 21.024147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.922871, 16.011814, 21.120291>,  <18.830675, 16.225760, 21.177977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.922871, 16.011814, 21.120291>,  <19.076529, 15.655239, 21.024147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922871, 16.011814, 21.120291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176070, -0.184823, 0.966871,
		0.906329, 0.413738, -0.085956,
		-0.384144, 0.891438, 0.240357,
		18.807627, 16.279245, 21.192398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541559, 15.907591, 21.403105>,  <19.076529, 15.655239, 21.024147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541559, 15.907591, 21.403105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.200703, 16.092426, 21.501354>,  <18.996189, 16.203327, 21.560305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.200703, 16.092426, 21.501354>,  <19.541559, 15.907591, 21.403105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200703, 16.092426, 21.501354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130640, -0.266659, 0.954896,
		0.506745, 0.845793, 0.166863,
		-0.852140, 0.462090, 0.245623,
		18.945061, 16.231052, 21.575041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628521, 16.187733, 22.054049>,  <19.541559, 15.907591, 21.403105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628521, 16.187733, 22.054049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.229977, 16.213486, 22.031708>,  <18.990850, 16.228937, 22.018303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.229977, 16.213486, 22.031708>,  <19.628521, 16.187733, 22.054049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.229977, 16.213486, 22.031708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061898, -0.096103, 0.993445,
		0.058591, 0.993287, 0.099738,
		-0.996361, 0.064381, -0.055852,
		18.931068, 16.232800, 22.014952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508902, 16.750351, 22.482458>,  <19.628521, 16.187733, 22.054049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508902, 16.750351, 22.482458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.172901, 16.536327, 22.446442>,  <18.971300, 16.407913, 22.424831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.172901, 16.536327, 22.446442>,  <19.508902, 16.750351, 22.482458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172901, 16.536327, 22.446442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105819, -0.001213, 0.994385,
		-0.532164, 0.844813, -0.055600,
		-0.840002, -0.535059, -0.090043,
		18.920900, 16.375809, 22.419428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978376, 17.184629, 22.809513>,  <19.508902, 16.750351, 22.482458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978376, 17.184629, 22.809513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.896671, 16.793163, 22.818396>,  <18.847649, 16.558285, 22.823725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.896671, 16.793163, 22.818396>,  <18.978376, 17.184629, 22.809513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896671, 16.793163, 22.818396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161425, 0.056049, 0.985292,
		-0.965515, 0.197673, -0.169430,
		-0.204262, -0.978664, 0.022207,
		18.835392, 16.499563, 22.825058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542665, 17.209570, 23.306225>,  <18.978376, 17.184629, 22.809513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542665, 17.209570, 23.306225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.591858, 16.815548, 23.257994>,  <18.621374, 16.579134, 23.229055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.591858, 16.815548, 23.257994>,  <18.542665, 17.209570, 23.306225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591858, 16.815548, 23.257994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146962, -0.138238, 0.979435,
		-0.981467, -0.102732, -0.161766,
		0.122982, -0.985057, -0.120578,
		18.628752, 16.520031, 23.221821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939562, 16.881266, 23.713011>,  <18.542665, 17.209570, 23.306225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939562, 16.881266, 23.713011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.226513, 16.604191, 23.683193>,  <18.398684, 16.437946, 23.665302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.226513, 16.604191, 23.683193>,  <17.939562, 16.881266, 23.713011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226513, 16.604191, 23.683193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043277, -0.151095, 0.987572,
		-0.695340, -0.705235, -0.138369,
		0.717377, -0.692686, -0.074542,
		18.441727, 16.396385, 23.660831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765615, 16.403440, 24.139191>,  <17.939562, 16.881266, 23.713011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765615, 16.403440, 24.139191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.150208, 16.303055, 24.094332>,  <18.380962, 16.242825, 24.067417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.150208, 16.303055, 24.094332>,  <17.765615, 16.403440, 24.139191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150208, 16.303055, 24.094332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062999, -0.195935, 0.978591,
		-0.267564, -0.947959, -0.172576,
		0.961478, -0.250964, -0.112146,
		18.438652, 16.227766, 24.060688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907255, 15.793852, 24.502220>,  <17.765615, 16.403440, 24.139191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907255, 15.793852, 24.502220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.256733, 15.985714, 24.469749>,  <18.466419, 16.100832, 24.450268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.256733, 15.985714, 24.469749>,  <17.907255, 15.793852, 24.502220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256733, 15.985714, 24.469749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215297, -0.231611, 0.948685,
		0.436240, -0.846338, -0.305626,
		0.873694, 0.479655, -0.081176,
		18.518841, 16.129610, 24.445396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356722, 15.351330, 24.708355>,  <17.907255, 15.793852, 24.502220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356722, 15.351330, 24.708355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.515587, 15.712048, 24.776505>,  <18.610907, 15.928478, 24.817394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.515587, 15.712048, 24.776505>,  <18.356722, 15.351330, 24.708355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515587, 15.712048, 24.776505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169985, -0.254717, 0.951958,
		0.901868, -0.349122, -0.254456,
		0.397164, 0.901795, 0.170375,
		18.634735, 15.982586, 24.827618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874031, 15.239729, 25.240234>,  <18.356722, 15.351330, 24.708355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874031, 15.239729, 25.240234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.854263, 15.639240, 25.239803>,  <18.842403, 15.878947, 25.239544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.854263, 15.639240, 25.239803>,  <18.874031, 15.239729, 25.240234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854263, 15.639240, 25.239803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393207, 0.020449, 0.919223,
		0.918121, 0.045004, -0.393737,
		-0.049420, 0.998778, -0.001079,
		18.839437, 15.938873, 25.239479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550610, 15.544930, 25.447350>,  <18.874031, 15.239729, 25.240234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.550610, 15.544930, 25.447350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.272964, 15.822617, 25.523527>,  <19.106377, 15.989228, 25.569233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.272964, 15.822617, 25.523527>,  <19.550610, 15.544930, 25.447350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272964, 15.822617, 25.523527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280463, 0.017145, 0.959712,
		0.662983, 0.719561, -0.206603,
		-0.694114, 0.694217, 0.190444,
		19.064730, 16.030882, 25.580660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.769203, 16.158072, 25.828737>,  <19.550610, 15.544930, 25.447350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.769203, 16.158072, 25.828737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.386127, 16.070545, 25.903515>,  <19.156282, 16.018030, 25.948381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.386127, 16.070545, 25.903515>,  <19.769203, 16.158072, 25.828737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386127, 16.070545, 25.903515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207569, -0.075192, 0.975326,
		-0.199360, 0.972865, 0.117430,
		-0.957691, -0.218815, 0.186946,
		19.098820, 16.004900, 25.959599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517353, 16.622719, 26.417812>,  <19.769203, 16.158072, 25.828737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.517353, 16.622719, 26.417812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.306889, 16.284035, 26.386227>,  <19.180609, 16.080824, 26.367275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.306889, 16.284035, 26.386227>,  <19.517353, 16.622719, 26.417812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306889, 16.284035, 26.386227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232488, -0.232545, 0.944390,
		-0.817987, 0.478545, 0.319206,
		-0.526163, -0.846710, -0.078963,
		19.149040, 16.030022, 26.362537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166527, 16.942032, 26.201103>,  <19.517353, 16.622719, 26.417812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166527, 16.942032, 26.201103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.420448, 17.248245, 26.243015>,  <20.572802, 17.431974, 26.268162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.420448, 17.248245, 26.243015>,  <20.166527, 16.942032, 26.201103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420448, 17.248245, 26.243015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083697, 0.202938, -0.975608,
		-0.768126, 0.610551, 0.192899,
		0.634805, 0.765535, 0.104781,
		20.610889, 17.477905, 26.274450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.906599, 17.423716, 25.868074>,  <20.166527, 16.942032, 26.201103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.906599, 17.423716, 25.868074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.276089, 17.575066, 25.891972>,  <20.497782, 17.665876, 25.906311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.276089, 17.575066, 25.891972>,  <19.906599, 17.423716, 25.868074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276089, 17.575066, 25.891972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057328, 0.290758, -0.955078,
		-0.378750, 0.878801, 0.290271,
		0.923722, 0.378376, 0.059744,
		20.553205, 17.688578, 25.909895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873489, 18.103495, 25.633194>,  <19.906599, 17.423716, 25.868074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873489, 18.103495, 25.633194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.251003, 17.981255, 25.582790>,  <20.477512, 17.907911, 25.552549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.251003, 17.981255, 25.582790>,  <19.873489, 18.103495, 25.633194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251003, 17.981255, 25.582790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058471, 0.529520, -0.846280,
		0.325346, 0.791339, 0.517622,
		0.943785, -0.305600, -0.126007,
		20.534140, 17.889574, 25.544989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.316830, 18.649364, 25.498974>,  <19.873489, 18.103495, 25.633194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.316830, 18.649364, 25.498974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.505451, 18.336246, 25.336557>,  <20.618624, 18.148375, 25.239107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.505451, 18.336246, 25.336557>,  <20.316830, 18.649364, 25.498974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505451, 18.336246, 25.336557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072276, 0.493206, -0.866905,
		0.878871, 0.379444, 0.289149,
		0.471552, -0.782797, -0.406040,
		20.646917, 18.101408, 25.214745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844833, 19.027082, 25.171999>,  <20.316830, 18.649364, 25.498974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844833, 19.027082, 25.171999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.854702, 18.654869, 25.025850>,  <20.860624, 18.431541, 24.938162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.854702, 18.654869, 25.025850>,  <20.844833, 19.027082, 25.171999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854702, 18.654869, 25.025850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194037, 0.362990, -0.911366,
		0.980684, -0.048409, 0.189515,
		0.024674, -0.930535, -0.365372,
		20.862104, 18.375710, 24.916239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395388, 19.060116, 24.663008>,  <20.844833, 19.027082, 25.171999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395388, 19.060116, 24.663008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.181362, 18.731201, 24.585497>,  <21.052948, 18.533852, 24.538990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.181362, 18.731201, 24.585497>,  <21.395388, 19.060116, 24.663008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181362, 18.731201, 24.585497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075376, 0.181993, -0.980407,
		0.841444, -0.539185, -0.035397,
		-0.535062, -0.822289, -0.193778,
		21.020844, 18.484514, 24.527363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746302, 18.751366, 24.086220>,  <21.395388, 19.060116, 24.663008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746302, 18.751366, 24.086220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.370079, 18.615639, 24.080313>,  <21.144346, 18.534203, 24.076769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.370079, 18.615639, 24.080313>,  <21.746302, 18.751366, 24.086220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370079, 18.615639, 24.080313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021268, 0.102242, -0.994532,
		0.338974, -0.935098, -0.103381,
		-0.940555, -0.339319, -0.014770,
		21.087912, 18.513844, 24.075882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734821, 18.322006, 23.507965>,  <21.746302, 18.751366, 24.086220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734821, 18.322006, 23.507965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.350513, 18.411186, 23.573954>,  <21.119928, 18.464695, 23.613546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.350513, 18.411186, 23.573954>,  <21.734821, 18.322006, 23.507965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350513, 18.411186, 23.573954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148659, 0.088182, -0.984949,
		-0.234143, -0.970833, -0.051579,
		-0.960769, 0.222951, 0.164971,
		21.062283, 18.478071, 23.623446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241209, 17.699490, 23.174227>,  <21.734821, 18.322006, 23.507965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241209, 17.699490, 23.174227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.052460, 18.045963, 23.240026>,  <20.939211, 18.253847, 23.279507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.052460, 18.045963, 23.240026>,  <21.241209, 17.699490, 23.174227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052460, 18.045963, 23.240026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298009, 0.018901, -0.954376,
		-0.829775, -0.499366, 0.249212,
		-0.471873, 0.866185, 0.164499,
		20.910898, 18.305819, 23.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543020, 17.531408, 23.115417>,  <21.241209, 17.699490, 23.174227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543020, 17.531408, 23.115417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.576572, 17.920452, 23.028702>,  <20.596703, 18.153877, 22.976671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.576572, 17.920452, 23.028702>,  <20.543020, 17.531408, 23.115417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.576572, 17.920452, 23.028702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311643, -0.181039, -0.932793,
		-0.946490, 0.145803, 0.287921,
		0.083879, 0.972608, -0.216790,
		20.601736, 18.212234, 22.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956799, 17.643553, 22.682417>,  <20.543020, 17.531408, 23.115417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956799, 17.643553, 22.682417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.216740, 17.941513, 22.622000>,  <20.372705, 18.120289, 22.585749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.216740, 17.941513, 22.622000>,  <19.956799, 17.643553, 22.682417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.216740, 17.941513, 22.622000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142851, -0.075484, -0.986862,
		-0.746513, 0.662894, 0.057356,
		0.649855, 0.744899, -0.151045,
		20.411695, 18.164982, 22.576687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666449, 17.903242, 22.141966>,  <19.956799, 17.643553, 22.682417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666449, 17.903242, 22.141966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.023102, 18.084126, 22.133072>,  <20.237095, 18.192656, 22.127735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.023102, 18.084126, 22.133072>,  <19.666449, 17.903242, 22.141966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023102, 18.084126, 22.133072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038121, 0.026045, -0.998934,
		-0.451148, 0.891532, 0.040461,
		0.891635, 0.452209, -0.022236,
		20.290592, 18.219788, 22.126402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632172, 18.570601, 21.747469>,  <19.666449, 17.903242, 22.141966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632172, 18.570601, 21.747469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.014683, 18.454208, 21.735706>,  <20.244190, 18.384373, 21.728649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.014683, 18.454208, 21.735706>,  <19.632172, 18.570601, 21.747469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.014683, 18.454208, 21.735706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016027, 0.048264, -0.998706,
		0.292021, 0.955512, 0.041490,
		0.956278, -0.290978, -0.029408,
		20.301565, 18.366915, 21.726883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018581, 19.095037, 21.326578>,  <19.632172, 18.570601, 21.747469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018581, 19.095037, 21.326578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.222385, 18.751789, 21.301193>,  <20.344667, 18.545839, 21.285963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.222385, 18.751789, 21.301193>,  <20.018581, 19.095037, 21.326578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222385, 18.751789, 21.301193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014439, 0.082268, -0.996505,
		0.860344, 0.506812, 0.054306,
		0.509509, -0.858122, -0.063461,
		20.375238, 18.494352, 21.282154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438852, 19.169083, 20.834427>,  <20.018581, 19.095037, 21.326578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438852, 19.169083, 20.834427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.537083, 18.783115, 20.871565>,  <20.596022, 18.551535, 20.893848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.537083, 18.783115, 20.871565>,  <20.438852, 19.169083, 20.834427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537083, 18.783115, 20.871565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438436, 0.025139, -0.898411,
		0.864561, 0.261336, 0.429229,
		0.245577, -0.964921, 0.092845,
		20.610756, 18.493639, 20.899418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114012, 19.037468, 20.601816>,  <20.438852, 19.169083, 20.834427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114012, 19.037468, 20.601816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.922287, 18.691719, 20.540998>,  <20.807253, 18.484270, 20.504509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.922287, 18.691719, 20.540998>,  <21.114012, 19.037468, 20.601816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922287, 18.691719, 20.540998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422785, -0.075592, -0.903072,
		0.769099, -0.497134, 0.401676,
		-0.479311, -0.864375, -0.152043,
		20.778494, 18.432407, 20.495386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.670620, 18.561855, 20.434397>,  <21.114012, 19.037468, 20.601816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.670620, 18.561855, 20.434397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.335735, 18.371571, 20.326488>,  <21.134806, 18.257401, 20.261744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.335735, 18.371571, 20.326488>,  <21.670620, 18.561855, 20.434397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335735, 18.371571, 20.326488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469346, -0.371813, -0.800918,
		0.280701, -0.797153, 0.534559,
		-0.837210, -0.475711, -0.269773,
		21.084572, 18.228857, 20.245556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913389, 17.916874, 20.328173>,  <21.670620, 18.561855, 20.434397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913389, 17.916874, 20.328173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.563465, 17.900436, 20.135084>,  <21.353512, 17.890574, 20.019232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.563465, 17.900436, 20.135084>,  <21.913389, 17.916874, 20.328173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.563465, 17.900436, 20.135084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437591, -0.494609, -0.750917,
		-0.207900, -0.868144, 0.450671,
		-0.874809, -0.041094, -0.482721,
		21.301022, 17.888109, 19.990267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.873075, 17.222059, 19.987509>,  <21.913389, 17.916874, 20.328173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.873075, 17.222059, 19.987509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.605595, 17.440525, 19.785702>,  <21.445107, 17.571606, 19.664618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.605595, 17.440525, 19.785702>,  <21.873075, 17.222059, 19.987509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605595, 17.440525, 19.785702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186784, -0.533389, -0.824990,
		-0.719685, -0.645910, 0.254664,
		-0.668704, 0.546166, -0.504518,
		21.404984, 17.604376, 19.634346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500265, 16.752451, 19.571512>,  <21.873075, 17.222059, 19.987509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500265, 16.752451, 19.571512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.471203, 17.108017, 19.390602>,  <21.453766, 17.321356, 19.282055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.471203, 17.108017, 19.390602>,  <21.500265, 16.752451, 19.571512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471203, 17.108017, 19.390602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229360, -0.426429, -0.874958,
		-0.970626, -0.167304, -0.172899,
		-0.072655, 0.888914, -0.452276,
		21.449406, 17.374691, 19.254919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.135305, 17.064590, 14.497039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.367313, 17.376133, 14.592508>,  <17.506517, 17.563059, 14.649790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.367313, 17.376133, 14.592508>,  <17.135305, 17.064590, 14.497039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367313, 17.376133, 14.592508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213934, 0.428350, -0.877923,
		-0.786010, 0.458151, 0.415074,
		0.580018, 0.778854, 0.238674,
		17.541319, 17.609789, 14.664110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670061, 17.653765, 14.404585>,  <17.135305, 17.064590, 14.497039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670061, 17.653765, 14.404585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.049931, 17.778774, 14.396128>,  <17.277853, 17.853781, 14.391053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.049931, 17.778774, 14.396128>,  <16.670061, 17.653765, 14.404585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.049931, 17.778774, 14.396128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161625, 0.431079, -0.887721,
		-0.268319, 0.846463, 0.459897,
		0.949675, 0.312523, -0.021143,
		17.334833, 17.872532, 14.389785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597637, 18.351488, 14.199422>,  <16.670061, 17.653765, 14.404585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597637, 18.351488, 14.199422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.968769, 18.250969, 14.089161>,  <17.191448, 18.190657, 14.023005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.968769, 18.250969, 14.089161>,  <16.597637, 18.351488, 14.199422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968769, 18.250969, 14.089161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204984, 0.273899, -0.939660,
		0.311637, 0.928347, 0.202619,
		0.927828, -0.251299, -0.275653,
		17.247118, 18.175579, 14.006465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849451, 18.946209, 13.809435>,  <16.597637, 18.351488, 14.199422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849451, 18.946209, 13.809435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.057178, 18.620529, 13.705601>,  <17.181816, 18.425121, 13.643300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.057178, 18.620529, 13.705601>,  <16.849451, 18.946209, 13.809435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057178, 18.620529, 13.705601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109885, 0.237615, -0.965124,
		0.847485, 0.529733, 0.033930,
		0.519320, -0.814200, -0.259585,
		17.212975, 18.376268, 13.627726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203247, 19.221380, 13.185144>,  <16.849451, 18.946209, 13.809435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203247, 19.221380, 13.185144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250160, 18.824150, 13.187881>,  <17.278307, 18.585812, 13.189524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250160, 18.824150, 13.187881>,  <17.203247, 19.221380, 13.185144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250160, 18.824150, 13.187881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047064, -0.012441, -0.998814,
		0.991983, 0.116820, -0.048197,
		0.117281, -0.993075, 0.006843,
		17.285345, 18.526228, 13.189935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932177, 18.994530, 12.818298>,  <17.203247, 19.221380, 13.185144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932177, 18.994530, 12.818298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.662991, 18.701962, 12.774222>,  <17.501480, 18.526421, 12.747777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.662991, 18.701962, 12.774222>,  <17.932177, 18.994530, 12.818298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662991, 18.701962, 12.774222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263483, -0.097845, -0.959689,
		0.691156, -0.674869, 0.258564,
		-0.672963, -0.731422, -0.110190,
		17.461102, 18.482534, 12.741165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.320944, 18.558659, 12.458802>,  <17.932177, 18.994530, 12.818298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.320944, 18.558659, 12.458802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.954716, 18.405910, 12.408354>,  <17.734980, 18.314262, 12.378085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.954716, 18.405910, 12.408354>,  <18.320944, 18.558659, 12.458802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954716, 18.405910, 12.408354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175023, -0.096013, -0.979872,
		0.362073, -0.919216, 0.154743,
		-0.915571, -0.381869, -0.126121,
		17.680044, 18.291349, 12.370518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352467, 17.822681, 12.128739>,  <18.320944, 18.558659, 12.458802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352467, 17.822681, 12.128739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.996620, 17.991585, 12.059139>,  <17.783112, 18.092928, 12.017379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.996620, 17.991585, 12.059139>,  <18.352467, 17.822681, 12.128739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996620, 17.991585, 12.059139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121225, -0.148999, -0.981378,
		-0.440323, -0.894145, 0.081364,
		-0.889618, 0.422260, -0.174000,
		17.729734, 18.118263, 12.006939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015015, 17.308718, 11.676550>,  <18.352467, 17.822681, 12.128739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015015, 17.308718, 11.676550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.833523, 17.663204, 11.639138>,  <17.724628, 17.875896, 11.616692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.833523, 17.663204, 11.639138>,  <18.015015, 17.308718, 11.676550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.833523, 17.663204, 11.639138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031319, -0.120747, -0.992189,
		-0.890589, -0.447255, 0.082542,
		-0.453729, 0.886218, -0.093529,
		17.697405, 17.929070, 11.611079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612267, 17.155420, 11.177094>,  <18.015015, 17.308718, 11.676550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612267, 17.155420, 11.177094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.630108, 17.554512, 11.197283>,  <17.640812, 17.793966, 11.209395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.630108, 17.554512, 11.197283>,  <17.612267, 17.155420, 11.177094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630108, 17.554512, 11.197283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062377, 0.047641, -0.996915,
		-0.997055, 0.047612, -0.060111,
		0.044601, 0.997729, 0.050470,
		17.643488, 17.853830, 11.212424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181044, 17.315042, 10.687314>,  <17.612267, 17.155420, 11.177094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181044, 17.315042, 10.687314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.361774, 17.668930, 10.733134>,  <17.470213, 17.881264, 10.760626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.361774, 17.668930, 10.733134>,  <17.181044, 17.315042, 10.687314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361774, 17.668930, 10.733134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085543, 0.084846, -0.992715,
		-0.887995, 0.458334, -0.037346,
		0.451826, 0.884721, 0.114550,
		17.497322, 17.934347, 10.767499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883600, 17.726093, 10.170459>,  <17.181044, 17.315042, 10.687314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883600, 17.726093, 10.170459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245243, 17.854622, 10.283132>,  <17.462229, 17.931740, 10.350736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245243, 17.854622, 10.283132>,  <16.883600, 17.726093, 10.170459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245243, 17.854622, 10.283132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275714, 0.064952, -0.959043,
		-0.326458, 0.944740, -0.029870,
		0.904106, 0.321323, 0.281682,
		17.516476, 17.951019, 10.367637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184324, 17.661621, 10.456360>,  <16.883600, 17.726093, 10.170459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184324, 17.661621, 10.456360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.965526, 17.529236, 10.763934>,  <15.834247, 17.449804, 10.948479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.965526, 17.529236, 10.763934>,  <16.184324, 17.661621, 10.456360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965526, 17.529236, 10.763934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338340, -0.752766, -0.564686,
		0.765717, -0.569041, 0.299781,
		-0.546995, -0.330962, 0.768935,
		15.801427, 17.429947, 10.994615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075830, 16.966381, 10.411382>,  <16.184324, 17.661621, 10.456360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075830, 16.966381, 10.411382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.749898, 17.067921, 10.619847>,  <15.554338, 17.128843, 10.744926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.749898, 17.067921, 10.619847>,  <16.075830, 16.966381, 10.411382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749898, 17.067921, 10.619847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514168, -0.731691, -0.447503,
		0.267734, -0.632605, 0.726725,
		-0.814831, 0.253847, 0.521165,
		15.505448, 17.144075, 10.776196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523509, 17.341932, 10.059549>,  <16.075830, 16.966381, 10.411382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523509, 17.341932, 10.059549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.204532, 17.560547, 9.957268>,  <15.013145, 17.691715, 9.895899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.204532, 17.560547, 9.957268>,  <15.523509, 17.341932, 10.059549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204532, 17.560547, 9.957268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145615, 0.585561, 0.797442,
		0.585561, 0.598680, -0.546535,
		-0.797442, 0.546535, -0.255705,
		14.965299, 17.724508, 9.880556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721785, 18.062790, 10.072280>,  <15.523509, 17.341932, 10.059549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721785, 18.062790, 10.072280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.331208, 18.009731, 10.140362>,  <15.096863, 17.977896, 10.181211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.331208, 18.009731, 10.140362>,  <15.721785, 18.062790, 10.072280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331208, 18.009731, 10.140362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082698, 0.498505, 0.862933,
		-0.199313, 0.856678, -0.475791,
		-0.976440, -0.132647, 0.170204,
		15.038277, 17.969936, 10.191423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.475152, 18.752811, 10.404279>,  <15.721785, 18.062790, 10.072280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.475152, 18.752811, 10.404279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.170386, 18.501701, 10.468003>,  <14.987527, 18.351034, 10.506238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.170386, 18.501701, 10.468003>,  <15.475152, 18.752811, 10.404279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170386, 18.501701, 10.468003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206671, 0.468770, 0.858802,
		-0.613818, 0.621410, -0.486907,
		-0.761915, -0.627778, 0.159312,
		14.941812, 18.313368, 10.515797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887300, 19.097828, 10.683154>,  <15.475152, 18.752811, 10.404279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887300, 19.097828, 10.683154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.799813, 18.723213, 10.792745>,  <14.747321, 18.498444, 10.858499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.799813, 18.723213, 10.792745>,  <14.887300, 19.097828, 10.683154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799813, 18.723213, 10.792745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288112, 0.330236, 0.898853,
		-0.932285, 0.117658, -0.342055,
		-0.218716, -0.936536, 0.273975,
		14.734199, 18.442253, 10.874937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.157976, 19.069736, 10.935022>,  <14.887300, 19.097828, 10.683154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.157976, 19.069736, 10.935022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.349013, 18.751377, 11.083856>,  <14.463635, 18.560360, 11.173156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.349013, 18.751377, 11.083856>,  <14.157976, 19.069736, 10.935022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349013, 18.751377, 11.083856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283350, 0.261344, 0.922720,
		-0.831636, -0.546115, -0.100702,
		0.477593, -0.795901, 0.372084,
		14.492291, 18.512608, 11.195481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756537, 18.737232, 11.378432>,  <14.157976, 19.069736, 10.935022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756537, 18.737232, 11.378432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.116618, 18.614105, 11.501647>,  <14.332666, 18.540230, 11.575576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.116618, 18.614105, 11.501647>,  <13.756537, 18.737232, 11.378432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116618, 18.614105, 11.501647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211276, 0.309821, 0.927024,
		-0.380791, -0.899588, 0.213867,
		0.900201, -0.307817, 0.308038,
		14.386679, 18.521761, 11.594058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757725, 18.548239, 12.032855>,  <13.756537, 18.737232, 11.378432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757725, 18.548239, 12.032855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.156056, 18.575077, 12.008127>,  <14.395056, 18.591181, 11.993291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.156056, 18.575077, 12.008127>,  <13.757725, 18.548239, 12.032855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156056, 18.575077, 12.008127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056102, 0.083986, 0.994886,
		0.071941, -0.994206, 0.079872,
		0.995830, 0.067092, -0.061819,
		14.454805, 18.595205, 11.989581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031915, 18.079370, 12.541217>,  <13.757725, 18.548239, 12.032855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031915, 18.079370, 12.541217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.328477, 18.334949, 12.459176>,  <14.506414, 18.488297, 12.409951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.328477, 18.334949, 12.459176>,  <14.031915, 18.079370, 12.541217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328477, 18.334949, 12.459176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093528, 0.204270, 0.974436,
		0.664508, -0.741635, 0.091687,
		0.741405, 0.638945, -0.205103,
		14.550899, 18.526632, 12.397645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.435733, 17.987099, 13.019099>,  <14.031915, 18.079370, 12.541217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.435733, 17.987099, 13.019099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.556813, 18.341801, 12.879362>,  <14.629461, 18.554621, 12.795520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.556813, 18.341801, 12.879362>,  <14.435733, 17.987099, 13.019099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556813, 18.341801, 12.879362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288251, 0.264195, 0.920387,
		0.908451, -0.379301, -0.175635,
		0.302702, 0.886753, -0.349343,
		14.647624, 18.607826, 12.774559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118457, 18.074257, 13.227221>,  <14.435733, 17.987099, 13.019099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.118457, 18.074257, 13.227221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.974862, 18.443829, 13.174335>,  <14.888705, 18.665571, 13.142605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.974862, 18.443829, 13.174335>,  <15.118457, 18.074257, 13.227221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974862, 18.443829, 13.174335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326060, 0.256876, 0.909780,
		0.874536, 0.283490, -0.393472,
		-0.358987, 0.923931, -0.132212,
		14.867166, 18.721008, 13.134672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609573, 18.497980, 13.424568>,  <15.118457, 18.074257, 13.227221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609573, 18.497980, 13.424568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.306231, 18.756779, 13.456299>,  <15.124227, 18.912058, 13.475337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.306231, 18.756779, 13.456299>,  <15.609573, 18.497980, 13.424568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306231, 18.756779, 13.456299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292012, 0.228400, 0.928742,
		0.582775, 0.727481, -0.362140,
		-0.758355, 0.646997, 0.079327,
		15.078725, 18.950878, 13.480097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885506, 19.138193, 13.636868>,  <15.609573, 18.497980, 13.424568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885506, 19.138193, 13.636868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.496676, 19.162018, 13.727667>,  <15.263379, 19.176313, 13.782146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.496676, 19.162018, 13.727667>,  <15.885506, 19.138193, 13.636868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496676, 19.162018, 13.727667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232198, 0.384382, 0.893495,
		-0.034035, 0.921251, -0.387477,
		-0.972073, 0.059561, 0.226996,
		15.205054, 19.179886, 13.795766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832372, 19.797239, 14.041714>,  <15.885506, 19.138193, 13.636868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832372, 19.797239, 14.041714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.500539, 19.597324, 14.141317>,  <15.301439, 19.477375, 14.201079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.500539, 19.597324, 14.141317>,  <15.832372, 19.797239, 14.041714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.500539, 19.597324, 14.141317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061263, 0.361787, 0.930245,
		-0.555013, 0.786970, -0.269514,
		-0.829583, -0.499788, 0.249009,
		15.251664, 19.447388, 14.216020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513922, 20.272226, 14.487541>,  <15.832372, 19.797239, 14.041714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.513922, 20.272226, 14.487541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.329362, 19.928730, 14.576694>,  <15.218626, 19.722633, 14.630186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.329362, 19.928730, 14.576694>,  <15.513922, 20.272226, 14.487541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329362, 19.928730, 14.576694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062105, 0.281869, 0.957441,
		-0.885016, 0.427921, -0.183386,
		-0.461400, -0.858739, 0.222882,
		15.190942, 19.671108, 14.643559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393888, 20.947119, 14.230377>,  <15.513922, 20.272226, 14.487541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393888, 20.947119, 14.230377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.689898, 21.126690, 14.430706>,  <15.867505, 21.234432, 14.550903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.689898, 21.126690, 14.430706>,  <15.393888, 20.947119, 14.230377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689898, 21.126690, 14.430706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528862, 0.071643, -0.845679,
		-0.415529, 0.890692, -0.184403,
		0.740028, 0.448927, 0.500822,
		15.911907, 21.261368, 14.580953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422997, 21.679808, 14.110737>,  <15.393888, 20.947119, 14.230377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422997, 21.679808, 14.110737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.792893, 21.549667, 14.189730>,  <16.014832, 21.471582, 14.237125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.792893, 21.549667, 14.189730>,  <15.422997, 21.679808, 14.110737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792893, 21.549667, 14.189730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259994, 0.161080, -0.952080,
		0.277950, 0.931772, 0.233547,
		0.924742, -0.325351, 0.197483,
		16.070316, 21.452063, 14.248975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976629, 22.063391, 13.746594>,  <15.422997, 21.679808, 14.110737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976629, 22.063391, 13.746594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.148781, 21.715355, 13.842693>,  <16.252071, 21.506533, 13.900352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.148781, 21.715355, 13.842693>,  <15.976629, 22.063391, 13.746594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148781, 21.715355, 13.842693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293425, -0.116846, -0.948814,
		0.853625, 0.478844, 0.205018,
		0.430378, -0.870089, 0.240248,
		16.277895, 21.454329, 13.914767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.607019, 22.139147, 13.449998>,  <15.976629, 22.063391, 13.746594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.607019, 22.139147, 13.449998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.563839, 21.744419, 13.498217>,  <16.537931, 21.507582, 13.527147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.563839, 21.744419, 13.498217>,  <16.607019, 22.139147, 13.449998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563839, 21.744419, 13.498217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438204, -0.156071, -0.885223,
		0.892370, -0.042736, 0.449276,
		-0.107950, -0.986821, 0.120546,
		16.531454, 21.448372, 13.534381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287556, 21.891651, 13.183797>,  <16.607019, 22.139147, 13.449998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287556, 21.891651, 13.183797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.056206, 21.565350, 13.181675>,  <16.917397, 21.369568, 13.180402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.056206, 21.565350, 13.181675>,  <17.287556, 21.891651, 13.183797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056206, 21.565350, 13.181675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469129, -0.327282, -0.820246,
		0.667384, -0.476897, 0.571986,
		-0.578373, -0.815755, -0.005304,
		16.882694, 21.320623, 13.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705067, 21.321550, 12.966856>,  <17.287556, 21.891651, 13.183797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.705067, 21.321550, 12.966856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.345119, 21.158833, 12.903919>,  <17.129152, 21.061201, 12.866158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.345119, 21.158833, 12.903919>,  <17.705067, 21.321550, 12.966856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345119, 21.158833, 12.903919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351757, -0.463568, -0.813247,
		0.257888, -0.787160, 0.560243,
		-0.899867, -0.406796, -0.157341,
		17.075159, 21.036795, 12.856717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800774, 20.701206, 12.721478>,  <17.705067, 21.321550, 12.966856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800774, 20.701206, 12.721478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.446190, 20.816277, 12.576462>,  <17.233440, 20.885319, 12.489452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.446190, 20.816277, 12.576462>,  <17.800774, 20.701206, 12.721478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446190, 20.816277, 12.576462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317339, -0.192380, -0.928593,
		-0.336880, -0.938207, 0.079245,
		-0.886458, 0.287677, -0.362538,
		17.180252, 20.902578, 12.467700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561302, 20.115934, 12.197587>,  <17.800774, 20.701206, 12.721478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561302, 20.115934, 12.197587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.335236, 20.433064, 12.106362>,  <17.199594, 20.623341, 12.051627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.335236, 20.433064, 12.106362>,  <17.561302, 20.115934, 12.197587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335236, 20.433064, 12.106362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219323, -0.122102, -0.967982,
		-0.795287, -0.597092, -0.104876,
		-0.565169, 0.792825, -0.228063,
		17.165686, 20.670912, 12.037944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307444, 19.947027, 11.479853>,  <17.561302, 20.115934, 12.197587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307444, 19.947027, 11.479853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.244350, 20.336796, 11.543882>,  <17.206495, 20.570658, 11.582300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.244350, 20.336796, 11.543882>,  <17.307444, 19.947027, 11.479853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244350, 20.336796, 11.543882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173334, 0.186908, -0.966965,
		-0.972150, -0.124775, -0.198381,
		-0.157732, 0.974421, 0.160075,
		17.197031, 20.629122, 11.591905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.824434, 20.183361, 11.038557>,  <17.307444, 19.947027, 11.479853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.824434, 20.183361, 11.038557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.040283, 20.505894, 11.135420>,  <17.169792, 20.699413, 11.193538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.040283, 20.505894, 11.135420>,  <16.824434, 20.183361, 11.038557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040283, 20.505894, 11.135420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257929, 0.115465, -0.959239,
		-0.801424, 0.580086, -0.145669,
		0.539622, 0.806330, 0.242157,
		17.202169, 20.747793, 11.208067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599672, 20.642422, 10.595411>,  <16.824434, 20.183361, 11.038557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599672, 20.642422, 10.595411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.953156, 20.771271, 10.731231>,  <17.165245, 20.848581, 10.812722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.953156, 20.771271, 10.731231>,  <16.599672, 20.642422, 10.595411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953156, 20.771271, 10.731231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287130, 0.199788, -0.936825,
		-0.369612, 0.925376, 0.084063,
		0.883710, 0.322124, 0.339548,
		17.218269, 20.867908, 10.833095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716812, 21.212965, 10.265573>,  <16.599672, 20.642422, 10.595411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716812, 21.212965, 10.265573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.087170, 21.118984, 10.383907>,  <17.309383, 21.062595, 10.454908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.087170, 21.118984, 10.383907>,  <16.716812, 21.212965, 10.265573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.087170, 21.118984, 10.383907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349554, 0.235771, -0.906766,
		0.143296, 0.942979, 0.300427,
		0.925893, -0.234951, 0.295837,
		17.364937, 21.048498, 10.472658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.409093, 22.404655, 18.322596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766978, 22.250771, 18.231833>,  <15.981709, 22.158440, 18.177374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766978, 22.250771, 18.231833>,  <15.409093, 22.404655, 18.322596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766978, 22.250771, 18.231833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152552, 0.214262, -0.964790,
		0.419782, 0.897825, 0.133015,
		0.894713, -0.384710, -0.226909,
		16.035393, 22.135357, 18.163759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675826, 22.927673, 17.820904>,  <15.409093, 22.404655, 18.322596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675826, 22.927673, 17.820904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866405, 22.578648, 17.777758>,  <15.980752, 22.369232, 17.751869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866405, 22.578648, 17.777758>,  <15.675826, 22.927673, 17.820904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866405, 22.578648, 17.777758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095280, 0.070720, -0.992935,
		0.874026, 0.483357, -0.049444,
		0.476446, -0.872562, -0.107865,
		16.009338, 22.316879, 17.745398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214634, 23.026628, 17.279810>,  <15.675826, 22.927673, 17.820904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214634, 23.026628, 17.279810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203438, 22.627964, 17.310478>,  <16.196720, 22.388765, 17.328878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203438, 22.627964, 17.310478>,  <16.214634, 23.026628, 17.279810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.203438, 22.627964, 17.310478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167827, -0.080298, -0.982541,
		0.985419, -0.014632, 0.169514,
		-0.027988, -0.996664, 0.076671,
		16.195042, 22.328964, 17.333479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750534, 22.761303, 16.836325>,  <16.214634, 23.026628, 17.279810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750534, 22.761303, 16.836325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505299, 22.447163, 16.870596>,  <16.358156, 22.258678, 16.891159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505299, 22.447163, 16.870596>,  <16.750534, 22.761303, 16.836325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505299, 22.447163, 16.870596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189896, -0.251771, -0.948974,
		0.766850, -0.565537, 0.303494,
		-0.613091, -0.785353, 0.085677,
		16.321371, 22.211557, 16.896299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098227, 22.160233, 16.663755>,  <16.750534, 22.761303, 16.836325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098227, 22.160233, 16.663755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707718, 22.095795, 16.605864>,  <16.473413, 22.057133, 16.571129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707718, 22.095795, 16.605864>,  <17.098227, 22.160233, 16.663755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.707718, 22.095795, 16.605864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197221, -0.385334, -0.901455,
		0.089449, -0.908607, 0.407961,
		-0.976269, -0.161093, -0.144729,
		16.414837, 22.047466, 16.562445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159098, 21.557768, 16.305103>,  <17.098227, 22.160233, 16.663755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159098, 21.557768, 16.305103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788593, 21.697113, 16.247581>,  <16.566290, 21.780720, 16.213068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788593, 21.697113, 16.247581>,  <17.159098, 21.557768, 16.305103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788593, 21.697113, 16.247581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058792, -0.243337, -0.968158,
		-0.372265, -0.905223, 0.204913,
		-0.926262, 0.348364, -0.143806,
		16.510715, 21.801622, 16.204439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698641, 21.025183, 16.131060>,  <17.159098, 21.557768, 16.305103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698641, 21.025183, 16.131060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491833, 21.339466, 15.995207>,  <16.367748, 21.528036, 15.913695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491833, 21.339466, 15.995207>,  <16.698641, 21.025183, 16.131060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491833, 21.339466, 15.995207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129799, -0.464156, -0.876191,
		-0.846075, -0.408924, 0.341962,
		-0.517019, 0.785710, -0.339633,
		16.336727, 21.575178, 15.893317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124662, 20.693718, 15.810372>,  <16.698641, 21.025183, 16.131060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124662, 20.693718, 15.810372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176640, 21.072346, 15.692307>,  <16.207827, 21.299522, 15.621467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176640, 21.072346, 15.692307>,  <16.124662, 20.693718, 15.810372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176640, 21.072346, 15.692307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117111, -0.310258, -0.943411,
		-0.984581, 0.088023, -0.151170,
		0.129943, 0.946569, -0.295165,
		16.215622, 21.356316, 15.603757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747830, 20.631859, 15.305088>,  <16.124662, 20.693718, 15.810372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747830, 20.631859, 15.305088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986846, 20.948708, 15.255302>,  <16.130255, 21.138817, 15.225430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986846, 20.948708, 15.255302>,  <15.747830, 20.631859, 15.305088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986846, 20.948708, 15.255302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086946, -0.218317, -0.971997,
		-0.797111, 0.569985, -0.199325,
		0.597540, 0.792120, -0.124465,
		16.166107, 21.186344, 15.217963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102652, 20.419874, 15.107668>,  <15.747830, 20.631859, 15.305088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102652, 20.419874, 15.107668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134345, 20.022068, 15.080370>,  <15.153361, 19.783384, 15.063991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134345, 20.022068, 15.080370>,  <15.102652, 20.419874, 15.107668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.134345, 20.022068, 15.080370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223089, -0.084415, 0.971136,
		-0.971573, -0.061722, -0.228554,
		0.079233, -0.994517, -0.068246,
		15.158115, 19.723713, 15.059896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.690839, 20.162451, 15.620663>,  <15.102652, 20.419874, 15.107668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.690839, 20.162451, 15.620663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954467, 19.874573, 15.533331>,  <15.112644, 19.701847, 15.480932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954467, 19.874573, 15.533331>,  <14.690839, 20.162451, 15.620663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.954467, 19.874573, 15.533331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055059, -0.243348, 0.968375,
		-0.750063, -0.650249, -0.120757,
		0.659071, -0.719693, -0.218328,
		15.152188, 19.658665, 15.467833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527382, 19.696737, 16.192865>,  <14.690839, 20.162451, 15.620663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527382, 19.696737, 16.192865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865432, 19.540340, 16.047049>,  <15.068262, 19.446503, 15.959558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865432, 19.540340, 16.047049>,  <14.527382, 19.696737, 16.192865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865432, 19.540340, 16.047049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104966, -0.547287, 0.830337,
		-0.524155, -0.740005, -0.421489,
		0.845129, -0.390984, -0.364539,
		15.118969, 19.423044, 15.937686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.545712, 18.868368, 16.220581>,  <14.527382, 19.696737, 16.192865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.545712, 18.868368, 16.220581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918036, 19.013351, 16.201738>,  <15.141431, 19.100342, 16.190434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918036, 19.013351, 16.201738>,  <14.545712, 18.868368, 16.220581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918036, 19.013351, 16.201738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249859, -0.536932, 0.805775,
		0.266767, -0.761793, -0.590345,
		0.930809, 0.362457, -0.047105,
		15.197279, 19.122089, 16.187607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025981, 18.323334, 16.373270>,  <14.545712, 18.868368, 16.220581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025981, 18.323334, 16.373270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228230, 18.662922, 16.434715>,  <15.349580, 18.866674, 16.471582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228230, 18.662922, 16.434715>,  <15.025981, 18.323334, 16.373270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228230, 18.662922, 16.434715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426882, -0.400906, 0.810584,
		0.749744, -0.344276, -0.565117,
		0.505624, 0.848969, 0.153612,
		15.379917, 18.917612, 16.480799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.715310, 18.101845, 16.544130>,  <15.025981, 18.323334, 16.373270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.715310, 18.101845, 16.544130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685697, 18.477528, 16.678238>,  <15.667929, 18.702938, 16.758703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685697, 18.477528, 16.678238>,  <15.715310, 18.101845, 16.544130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685697, 18.477528, 16.678238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299669, -0.299704, 0.905746,
		0.951166, 0.167527, -0.259263,
		-0.074035, 0.939208, 0.335271,
		15.663486, 18.759291, 16.778820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393156, 18.245831, 16.893282>,  <15.715310, 18.101845, 16.544130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.393156, 18.245831, 16.893282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129063, 18.510986, 17.034515>,  <15.970606, 18.670080, 17.119255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129063, 18.510986, 17.034515>,  <16.393156, 18.245831, 16.893282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129063, 18.510986, 17.034515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354537, -0.139367, 0.924598,
		0.662113, 0.735633, -0.143003,
		-0.660235, 0.662888, 0.353085,
		15.930992, 18.709852, 17.140442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802998, 18.602840, 17.340656>,  <16.393156, 18.245831, 16.893282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802998, 18.602840, 17.340656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427418, 18.679382, 17.455027>,  <16.202068, 18.725307, 17.523649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427418, 18.679382, 17.455027>,  <16.802998, 18.602840, 17.340656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427418, 18.679382, 17.455027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271071, -0.100325, 0.957317,
		0.211872, 0.976380, 0.042330,
		-0.938952, 0.191354, 0.285924,
		16.145733, 18.736788, 17.540804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725420, 19.225285, 17.752602>,  <16.802998, 18.602840, 17.340656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725420, 19.225285, 17.752602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386749, 19.029160, 17.835283>,  <16.183546, 18.911484, 17.884892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386749, 19.029160, 17.835283>,  <16.725420, 19.225285, 17.752602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386749, 19.029160, 17.835283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267716, -0.056818, 0.961821,
		-0.459851, 0.869691, 0.179372,
		-0.846679, -0.490315, 0.206703,
		16.132746, 18.882065, 17.897295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531746, 19.518559, 18.350098>,  <16.725420, 19.225285, 17.752602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531746, 19.518559, 18.350098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330273, 19.173035, 18.354858>,  <16.209389, 18.965721, 18.357714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330273, 19.173035, 18.354858>,  <16.531746, 19.518559, 18.350098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330273, 19.173035, 18.354858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044742, -0.012327, 0.998922,
		-0.862730, 0.503671, 0.044858,
		-0.503681, -0.863807, 0.011900,
		16.179169, 18.913893, 18.358429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135546, 19.616180, 18.923866>,  <16.531746, 19.518559, 18.350098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135546, 19.616180, 18.923866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149010, 19.218678, 18.881315>,  <16.157087, 18.980177, 18.855785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149010, 19.218678, 18.881315>,  <16.135546, 19.616180, 18.923866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149010, 19.218678, 18.881315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043724, -0.104872, 0.993524,
		-0.998477, -0.038091, 0.039921,
		0.033658, -0.993756, -0.106378,
		16.159107, 18.920551, 18.849401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565338, 19.335039, 19.348099>,  <16.135546, 19.616180, 18.923866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565338, 19.335039, 19.348099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809621, 19.022652, 19.295750>,  <15.956191, 18.835220, 19.264339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809621, 19.022652, 19.295750>,  <15.565338, 19.335039, 19.348099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.809621, 19.022652, 19.295750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116363, -0.251988, 0.960709,
		-0.783260, -0.571483, -0.244767,
		0.610708, -0.780967, -0.130872,
		15.992833, 18.788363, 19.256489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260247, 18.906588, 19.725214>,  <15.565338, 19.335039, 19.348099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260247, 18.906588, 19.725214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626512, 18.750942, 19.684902>,  <15.846271, 18.657555, 19.660715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626512, 18.750942, 19.684902>,  <15.260247, 18.906588, 19.725214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626512, 18.750942, 19.684902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003067, -0.257484, 0.966278,
		-0.401942, -0.884473, -0.236962,
		0.915660, -0.389114, -0.100781,
		15.901210, 18.634209, 19.654669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210648, 18.298573, 20.085541>,  <15.260247, 18.906588, 19.725214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210648, 18.298573, 20.085541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605617, 18.351776, 20.051357>,  <15.842598, 18.383699, 20.030848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605617, 18.351776, 20.051357>,  <15.210648, 18.298573, 20.085541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605617, 18.351776, 20.051357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139357, -0.476983, 0.867794,
		0.074664, -0.868789, -0.489521,
		0.987423, 0.133011, -0.085458,
		15.901844, 18.391680, 20.025721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.419573, 20.885572, 20.247171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.042637, 20.882931, 20.113335>,  <21.816475, 20.881346, 20.033033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.042637, 20.882931, 20.113335>,  <22.419573, 20.885572, 20.247171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042637, 20.882931, 20.113335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310936, -0.386971, -0.868085,
		-0.123744, -0.922068, 0.366712,
		-0.942340, -0.006603, -0.334590,
		21.759935, 20.880949, 20.012957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.232639, 20.220720, 20.031530>,  <22.419573, 20.885572, 20.247171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.232639, 20.220720, 20.031530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.958332, 20.447479, 19.848948>,  <21.793749, 20.583534, 19.739397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.958332, 20.447479, 19.848948>,  <22.232639, 20.220720, 20.031530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958332, 20.447479, 19.848948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256605, -0.398564, -0.880511,
		-0.681086, -0.720954, 0.127854,
		-0.685766, 0.566897, -0.456457,
		21.752602, 20.617548, 19.712011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877142, 19.710934, 19.617098>,  <22.232639, 20.220720, 20.031530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877142, 19.710934, 19.617098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.781464, 20.065552, 19.458694>,  <21.724056, 20.278322, 19.363653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.781464, 20.065552, 19.458694>,  <21.877142, 19.710934, 19.617098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781464, 20.065552, 19.458694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236330, -0.342424, -0.909337,
		-0.941772, -0.311095, -0.127612,
		-0.239193, 0.886547, -0.396006,
		21.709705, 20.331516, 19.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567387, 19.583546, 19.064919>,  <21.877142, 19.710934, 19.617098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567387, 19.583546, 19.064919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.691231, 19.960114, 19.011446>,  <21.765537, 20.186054, 18.979362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.691231, 19.960114, 19.011446>,  <21.567387, 19.583546, 19.064919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.691231, 19.960114, 19.011446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027824, -0.149497, -0.988371,
		-0.950456, 0.302291, -0.072480,
		0.309611, 0.941420, -0.133679,
		21.784115, 20.242538, 18.971342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.298044, 19.715849, 18.445139>,  <21.567387, 19.583546, 19.064919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.298044, 19.715849, 18.445139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.551357, 20.022118, 18.490211>,  <21.703346, 20.205879, 18.517256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.551357, 20.022118, 18.490211>,  <21.298044, 19.715849, 18.445139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551357, 20.022118, 18.490211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186963, -0.010071, -0.982315,
		-0.750997, 0.643152, -0.149530,
		0.633284, 0.765672, 0.112683,
		21.741343, 20.251820, 18.524015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162207, 20.168030, 17.848776>,  <21.298044, 19.715849, 18.445139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162207, 20.168030, 17.848776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.523876, 20.230438, 18.007837>,  <21.740877, 20.267883, 18.103273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.523876, 20.230438, 18.007837>,  <21.162207, 20.168030, 17.848776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.523876, 20.230438, 18.007837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401393, 0.008145, -0.915870,
		-0.146134, 0.987720, -0.055261,
		0.904173, 0.156021, 0.397654,
		21.795128, 20.277245, 18.127134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.380743, 20.789062, 17.529533>,  <21.162207, 20.168030, 17.848776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.380743, 20.789062, 17.529533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.678532, 20.556480, 17.660786>,  <21.857204, 20.416931, 17.739536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.678532, 20.556480, 17.660786>,  <21.380743, 20.789062, 17.529533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678532, 20.556480, 17.660786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384066, -0.029044, -0.922849,
		0.546127, 0.813058, 0.201696,
		0.744472, -0.581457, 0.328130,
		21.901873, 20.382044, 17.759224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005373, 21.080978, 17.239298>,  <21.380743, 20.789062, 17.529533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005373, 21.080978, 17.239298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.110809, 20.709049, 17.342018>,  <22.174070, 20.485891, 17.403650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.110809, 20.709049, 17.342018>,  <22.005373, 21.080978, 17.239298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.110809, 20.709049, 17.342018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385806, -0.142378, -0.911528,
		0.884123, 0.339345, 0.321202,
		0.263590, -0.929824, 0.256801,
		22.189886, 20.430101, 17.419058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620436, 20.995066, 17.027472>,  <22.005373, 21.080978, 17.239298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620436, 20.995066, 17.027472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.522873, 20.607628, 17.046791>,  <22.464334, 20.375166, 17.058382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.522873, 20.607628, 17.046791>,  <22.620436, 20.995066, 17.027472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522873, 20.607628, 17.046791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342475, -0.132621, -0.930120,
		0.907314, -0.210324, 0.364067,
		-0.243909, -0.968595, 0.048298,
		22.449699, 20.317049, 17.061281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.204878, 20.555395, 16.709747>,  <22.620436, 20.995066, 17.027472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.204878, 20.555395, 16.709747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.897366, 20.301365, 16.739836>,  <22.712858, 20.148947, 16.757889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.897366, 20.301365, 16.739836>,  <23.204878, 20.555395, 16.709747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.897366, 20.301365, 16.739836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386177, -0.554767, -0.736954,
		0.509751, -0.537507, 0.671744,
		-0.768779, -0.635075, 0.075220,
		22.666731, 20.110842, 16.762402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473835, 19.761887, 16.838432>,  <23.204878, 20.555395, 16.709747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473835, 19.761887, 16.838432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.106865, 19.769802, 16.679464>,  <22.886683, 19.774551, 16.584084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.106865, 19.769802, 16.679464>,  <23.473835, 19.761887, 16.838432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.106865, 19.769802, 16.679464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349217, -0.438719, -0.827994,
		-0.190740, -0.898406, 0.395581,
		-0.917424, 0.019788, -0.397419,
		22.831638, 19.775738, 16.560238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.373512, 19.141068, 16.467001>,  <23.473835, 19.761887, 16.838432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.373512, 19.141068, 16.467001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.113453, 19.395622, 16.300957>,  <22.957417, 19.548355, 16.201330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.113453, 19.395622, 16.300957>,  <23.373512, 19.141068, 16.467001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.113453, 19.395622, 16.300957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261073, -0.325967, -0.908618,
		-0.713546, -0.699111, 0.045783,
		-0.650148, 0.636388, -0.415112,
		22.918409, 19.586538, 16.176424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066494, 18.778790, 15.982880>,  <23.373512, 19.141068, 16.467001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066494, 18.778790, 15.982880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.945278, 19.142014, 15.867231>,  <22.872549, 19.359949, 15.797843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.945278, 19.142014, 15.867231>,  <23.066494, 18.778790, 15.982880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.945278, 19.142014, 15.867231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055159, -0.286164, -0.956592,
		-0.951380, -0.305834, 0.036631,
		-0.303041, 0.908061, -0.289120,
		22.854366, 19.414433, 15.780496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.481001, 18.694016, 15.487589>,  <23.066494, 18.778790, 15.982880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.481001, 18.694016, 15.487589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.632874, 19.058537, 15.423878>,  <22.723997, 19.277248, 15.385652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.632874, 19.058537, 15.423878>,  <22.481001, 18.694016, 15.487589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.632874, 19.058537, 15.423878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088206, -0.207046, -0.974347,
		-0.920902, 0.355893, -0.158994,
		0.379682, 0.911302, -0.159277,
		22.746778, 19.331926, 15.376095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839743, 18.419571, 15.221629>,  <22.481001, 18.694016, 15.487589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839743, 18.419571, 15.221629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.900520, 18.024963, 15.197313>,  <21.936987, 17.788198, 15.182724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.900520, 18.024963, 15.197313>,  <21.839743, 18.419571, 15.221629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.900520, 18.024963, 15.197313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205513, -0.091692, 0.974350,
		-0.966787, -0.135555, -0.216674,
		0.151946, -0.986518, -0.060788,
		21.946104, 17.729008, 15.179077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.223606, 18.109724, 15.569368>,  <21.839743, 18.419571, 15.221629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.223606, 18.109724, 15.569368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.489273, 17.810692, 15.568581>,  <21.648672, 17.631271, 15.568108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.489273, 17.810692, 15.568581>,  <21.223606, 18.109724, 15.569368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489273, 17.810692, 15.568581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186223, -0.167996, 0.968038,
		-0.724020, -0.642571, -0.250794,
		0.664166, -0.747583, -0.001971,
		21.688522, 17.586416, 15.567989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.851933, 17.514223, 15.814983>,  <21.223606, 18.109724, 15.569368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.851933, 17.514223, 15.814983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.243908, 17.479176, 15.886591>,  <21.479094, 17.458147, 15.929556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.243908, 17.479176, 15.886591>,  <20.851933, 17.514223, 15.814983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243908, 17.479176, 15.886591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192501, -0.183296, 0.964026,
		-0.051654, -0.979145, -0.196485,
		0.979937, -0.087620, 0.179019,
		21.537889, 17.452890, 15.940296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906403, 16.976439, 16.248659>,  <20.851933, 17.514223, 15.814983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906403, 16.976439, 16.248659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.246391, 17.181229, 16.298338>,  <21.450386, 17.304102, 16.328146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.246391, 17.181229, 16.298338>,  <20.906403, 16.976439, 16.248659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.246391, 17.181229, 16.298338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092688, -0.086747, 0.991909,
		0.518607, -0.854609, -0.026279,
		0.849975, 0.511975, 0.124199,
		21.501383, 17.334822, 16.335598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313484, 16.573946, 16.656610>,  <20.906403, 16.976439, 16.248659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313484, 16.573946, 16.656610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.509579, 16.920429, 16.695290>,  <21.627235, 17.128319, 16.718496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.509579, 16.920429, 16.695290>,  <21.313484, 16.573946, 16.656610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.509579, 16.920429, 16.695290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001855, -0.109905, 0.993940,
		0.871587, -0.487447, -0.052273,
		0.490238, 0.866208, 0.096696,
		21.656651, 17.180292, 16.724298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869673, 16.403008, 17.063887>,  <21.313484, 16.573946, 16.656610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869673, 16.403008, 17.063887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.773788, 16.790569, 17.088432>,  <21.716257, 17.023106, 17.103159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.773788, 16.790569, 17.088432>,  <21.869673, 16.403008, 17.063887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.773788, 16.790569, 17.088432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013747, -0.066586, 0.997686,
		0.970747, 0.238312, 0.029281,
		-0.239710, 0.968903, 0.061362,
		21.701876, 17.081240, 17.106840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097834, 16.604021, 17.690630>,  <21.869673, 16.403008, 17.063887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097834, 16.604021, 17.690630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.865452, 16.923645, 17.628675>,  <21.726023, 17.115419, 17.591503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.865452, 16.923645, 17.628675>,  <22.097834, 16.604021, 17.690630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865452, 16.923645, 17.628675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004118, 0.187407, 0.982274,
		0.813924, 0.571296, -0.105585,
		-0.580957, 0.799062, -0.154888,
		21.691164, 17.163364, 17.582209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.411358, 17.062380, 18.069597>,  <22.097834, 16.604021, 17.690630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.411358, 17.062380, 18.069597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.047199, 17.220398, 18.020418>,  <21.828705, 17.315208, 17.990910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.047199, 17.220398, 18.020418>,  <22.411358, 17.062380, 18.069597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047199, 17.220398, 18.020418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023548, 0.247209, 0.968676,
		0.413067, 0.884774, -0.215755,
		-0.910396, 0.395047, -0.122949,
		21.774080, 17.338913, 17.983534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415037, 17.705818, 18.451115>,  <22.411358, 17.062380, 18.069597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415037, 17.705818, 18.451115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.029957, 17.611710, 18.397667>,  <21.798908, 17.555244, 18.365599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.029957, 17.611710, 18.397667>,  <22.415037, 17.705818, 18.451115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.029957, 17.611710, 18.397667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214526, 0.362800, 0.906838,
		-0.164875, 0.901679, -0.399739,
		-0.962702, -0.235269, -0.133617,
		21.741146, 17.541128, 18.357582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134422, 18.276718, 18.651823>,  <22.415037, 17.705818, 18.451115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134422, 18.276718, 18.651823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.853256, 17.992714, 18.668772>,  <21.684557, 17.822311, 18.678940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.853256, 17.992714, 18.668772>,  <22.134422, 18.276718, 18.651823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.853256, 17.992714, 18.668772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332277, 0.380458, 0.863043,
		-0.628891, 0.592566, -0.503350,
		-0.702913, -0.710012, 0.042371,
		21.642382, 17.779711, 18.681482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345528, 18.524622, 18.577984>,  <22.134422, 18.276718, 18.651823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345528, 18.524622, 18.577984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.347572, 18.179134, 18.779562>,  <21.348799, 17.971842, 18.900509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.347572, 18.179134, 18.779562>,  <21.345528, 18.524622, 18.577984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347572, 18.179134, 18.779562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474998, 0.441374, 0.761292,
		-0.879972, -0.243265, -0.408009,
		0.005111, -0.863719, 0.503947,
		21.349106, 17.920019, 18.930746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.697386, 18.239901, 18.748081>,  <21.345528, 18.524622, 18.577984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.697386, 18.239901, 18.748081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.918720, 18.057720, 19.027046>,  <21.051521, 17.948412, 19.194426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.918720, 18.057720, 19.027046>,  <20.697386, 18.239901, 18.748081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918720, 18.057720, 19.027046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598056, 0.365552, 0.713233,
		-0.579784, -0.811748, -0.070113,
		0.553335, -0.455452, 0.697412,
		21.084721, 17.921085, 19.236269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.186249, 18.010185, 19.234188>,  <20.697386, 18.239901, 18.748081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.186249, 18.010185, 19.234188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.527615, 17.980598, 19.440571>,  <20.732435, 17.962847, 19.564400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.527615, 17.980598, 19.440571>,  <20.186249, 18.010185, 19.234188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527615, 17.980598, 19.440571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509562, 0.089876, 0.855727,
		-0.109666, -0.993203, 0.039012,
		0.853416, -0.073966, 0.515955,
		20.783640, 17.958408, 19.595358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.987823, 17.636663, 19.763376>,  <20.186249, 18.010185, 19.234188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.987823, 17.636663, 19.763376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.307716, 17.837627, 19.894836>,  <20.499653, 17.958206, 19.973713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.307716, 17.837627, 19.894836>,  <19.987823, 17.636663, 19.763376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307716, 17.837627, 19.894836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440336, 0.118773, 0.889942,
		0.408081, -0.856433, 0.316216,
		0.799734, 0.502410, 0.328649,
		20.547636, 17.988350, 19.993431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519144, 16.950762, 19.904087>,  <19.987823, 17.636663, 19.763376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.519144, 16.950762, 19.904087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.140087, 16.850636, 19.983404>,  <18.912653, 16.790560, 20.030994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.140087, 16.850636, 19.983404>,  <19.519144, 16.950762, 19.904087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140087, 16.850636, 19.983404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191963, -0.049714, -0.980142,
		0.255203, -0.966887, -0.000941,
		-0.947640, -0.250316, 0.198293,
		18.855795, 16.775541, 20.042892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402243, 16.347132, 19.479048>,  <19.519144, 16.950762, 19.904087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402243, 16.347132, 19.479048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.044201, 16.505836, 19.560406>,  <18.829376, 16.601059, 19.609221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.044201, 16.505836, 19.560406>,  <19.402243, 16.347132, 19.479048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044201, 16.505836, 19.560406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262450, -0.100090, -0.959740,
		-0.360431, -0.912448, 0.193721,
		-0.895103, 0.396762, 0.203397,
		18.775669, 16.624865, 19.621426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871853, 15.845101, 19.293850>,  <19.402243, 16.347132, 19.479048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871853, 15.845101, 19.293850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.690514, 16.201614, 19.297653>,  <18.581711, 16.415522, 19.299934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.690514, 16.201614, 19.297653>,  <18.871853, 15.845101, 19.293850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.690514, 16.201614, 19.297653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457323, -0.223434, -0.860775,
		-0.765069, -0.394578, 0.508898,
		-0.453348, 0.891283, 0.009507,
		18.554510, 16.469000, 19.300505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129280, 15.786694, 19.090309>,  <18.871853, 15.845101, 19.293850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129280, 15.786694, 19.090309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.206383, 16.172752, 19.019503>,  <18.252644, 16.404388, 18.977018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.206383, 16.172752, 19.019503>,  <18.129280, 15.786694, 19.090309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206383, 16.172752, 19.019503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442983, -0.075380, -0.893355,
		-0.875563, 0.250617, 0.413014,
		0.192757, 0.965147, -0.177018,
		18.264210, 16.462297, 18.966396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599218, 15.990029, 18.658556>,  <18.129280, 15.786694, 19.090309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599218, 15.990029, 18.658556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.834858, 16.307861, 18.599766>,  <17.976242, 16.498560, 18.564491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.834858, 16.307861, 18.599766>,  <17.599218, 15.990029, 18.658556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834858, 16.307861, 18.599766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325175, 0.066597, -0.943306,
		-0.739744, 0.603496, 0.297610,
		0.589101, 0.794580, -0.146977,
		18.011589, 16.546236, 18.555674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133154, 16.532873, 18.388485>,  <17.599218, 15.990029, 18.658556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133154, 16.532873, 18.388485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.507713, 16.624004, 18.281715>,  <17.732449, 16.678682, 18.217653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.507713, 16.624004, 18.281715>,  <17.133154, 16.532873, 18.388485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507713, 16.624004, 18.281715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309853, 0.179657, -0.933657,
		-0.164758, 0.956984, 0.238824,
		0.936401, 0.227827, -0.266924,
		17.788633, 16.692352, 18.201637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059198, 17.137711, 18.015093>,  <17.133154, 16.532873, 18.388485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059198, 17.137711, 18.015093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.427654, 17.013481, 17.921247>,  <17.648727, 16.938944, 17.864941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.427654, 17.013481, 17.921247>,  <17.059198, 17.137711, 18.015093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427654, 17.013481, 17.921247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106586, 0.378455, -0.919463,
		0.374352, 0.871961, 0.315507,
		0.921140, -0.310575, -0.234614,
		17.703997, 16.920309, 17.850863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.430090, 17.728176, 17.723276>,  <17.059198, 17.137711, 18.015093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.430090, 17.728176, 17.723276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.635700, 17.403126, 17.613426>,  <17.759066, 17.208096, 17.547516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.635700, 17.403126, 17.613426>,  <17.430090, 17.728176, 17.723276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635700, 17.403126, 17.613426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107797, 0.378818, -0.919172,
		0.850975, 0.442873, 0.282320,
		0.514024, -0.812626, -0.274624,
		17.789907, 17.159338, 17.531038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064480, 18.026817, 17.356266>,  <17.430090, 17.728176, 17.723276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064480, 18.026817, 17.356266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.994637, 17.650726, 17.239319>,  <17.952730, 17.425072, 17.169149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.994637, 17.650726, 17.239319>,  <18.064480, 18.026817, 17.356266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994637, 17.650726, 17.239319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097884, 0.278886, -0.955323,
		0.979760, -0.195427, 0.043337,
		-0.174610, -0.940229, -0.292370,
		17.942253, 17.368658, 17.151608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498455, 17.936625, 16.784420>,  <18.064480, 18.026817, 17.356266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.498455, 17.936625, 16.784420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.224045, 17.649097, 16.739389>,  <18.059399, 17.476582, 16.712372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.224045, 17.649097, 16.739389>,  <18.498455, 17.936625, 16.784420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224045, 17.649097, 16.739389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047296, 0.198457, -0.978968,
		0.726040, -0.666272, -0.170143,
		-0.686024, -0.718817, -0.112575,
		18.018238, 17.433453, 16.705616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756420, 17.510103, 16.250515>,  <18.498455, 17.936625, 16.784420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756420, 17.510103, 16.250515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.360817, 17.450981, 16.252342>,  <18.123455, 17.415508, 16.253439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.360817, 17.450981, 16.252342>,  <18.756420, 17.510103, 16.250515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360817, 17.450981, 16.252342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058341, 0.361606, -0.930504,
		0.135878, -0.920541, -0.366253,
		-0.989006, -0.147803, 0.004571,
		18.064116, 17.406639, 16.253714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642845, 17.214527, 15.697374>,  <18.756420, 17.510103, 16.250515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642845, 17.214527, 15.697374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.261623, 17.307938, 15.774473>,  <18.032890, 17.363983, 15.820732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.261623, 17.307938, 15.774473>,  <18.642845, 17.214527, 15.697374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261623, 17.307938, 15.774473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135320, 0.240965, -0.961054,
		-0.270877, -0.942020, -0.198052,
		-0.953056, 0.233527, 0.192746,
		17.975706, 17.377995, 15.832297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311535, 16.757250, 15.143155>,  <18.642845, 17.214527, 15.697374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311535, 16.757250, 15.143155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.101727, 17.078362, 15.256594>,  <17.975842, 17.271029, 15.324657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.101727, 17.078362, 15.256594>,  <18.311535, 16.757250, 15.143155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101727, 17.078362, 15.256594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184059, 0.218302, -0.958367,
		-0.831266, -0.554880, 0.033255,
		-0.524519, 0.802778, 0.283598,
		17.944370, 17.319195, 15.341673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751223, 16.781199, 14.704524>,  <18.311535, 16.757250, 15.143155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751223, 16.781199, 14.704524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.731098, 17.150410, 14.857094>,  <17.719025, 17.371937, 14.948636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.731098, 17.150410, 14.857094>,  <17.751223, 16.781199, 14.704524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731098, 17.150410, 14.857094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166201, 0.368845, -0.914511,
		-0.984808, -0.109401, 0.134852,
		-0.050309, 0.923030, 0.381424,
		17.716005, 17.427319, 14.971521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.568889, 17.579037, 20.153868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.825778, 17.870029, 20.250462>,  <15.979912, 18.044626, 20.308418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.825778, 17.870029, 20.250462>,  <15.568889, 17.579037, 20.153868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825778, 17.870029, 20.250462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295572, -0.525712, 0.797661,
		0.707238, -0.440901, -0.552649,
		0.642224, 0.727484, 0.241485,
		16.018446, 18.088274, 20.322906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065632, 17.249861, 20.471258>,  <15.568889, 17.579037, 20.153868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065632, 17.249861, 20.471258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.149666, 17.620335, 20.596510>,  <16.200087, 17.842619, 20.671661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.149666, 17.620335, 20.596510>,  <16.065632, 17.249861, 20.471258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149666, 17.620335, 20.596510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232205, -0.358381, 0.904237,
		0.949708, -0.117257, -0.290355,
		0.210085, 0.926183, 0.313129,
		16.212692, 17.898190, 20.690449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757999, 17.163870, 20.774961>,  <16.065632, 17.249861, 20.471258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757999, 17.163870, 20.774961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.587566, 17.494923, 20.921103>,  <16.485306, 17.693554, 21.008787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.587566, 17.494923, 20.921103>,  <16.757999, 17.163870, 20.774961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587566, 17.494923, 20.921103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192173, -0.311827, 0.930502,
		0.884038, 0.466681, -0.026184,
		-0.426083, 0.827631, 0.365351,
		16.459742, 17.743212, 21.030708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232250, 17.420980, 21.279301>,  <16.757999, 17.163870, 20.774961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232250, 17.420980, 21.279301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.855450, 17.532719, 21.353701>,  <16.629370, 17.599762, 21.398340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.855450, 17.532719, 21.353701>,  <17.232250, 17.420980, 21.279301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855450, 17.532719, 21.353701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114042, -0.254798, 0.960246,
		0.315633, 0.925767, 0.208163,
		-0.942003, 0.279346, 0.185999,
		16.572849, 17.616522, 21.409500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270823, 17.846167, 21.815714>,  <17.232250, 17.420980, 21.279301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270823, 17.846167, 21.815714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.883564, 17.746033, 21.817835>,  <16.651209, 17.685953, 21.819107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.883564, 17.746033, 21.817835>,  <17.270823, 17.846167, 21.815714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883564, 17.746033, 21.817835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028141, -0.087749, 0.995745,
		-0.248802, 0.964175, 0.091999,
		-0.968145, -0.250332, 0.005301,
		16.593121, 17.670933, 21.819426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949007, 18.265154, 22.356176>,  <17.270823, 17.846167, 21.815714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949007, 18.265154, 22.356176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.597198, 18.081142, 22.307486>,  <16.386114, 17.970736, 22.278271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.597198, 18.081142, 22.307486>,  <16.949007, 18.265154, 22.356176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597198, 18.081142, 22.307486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081051, -0.107246, 0.990923,
		-0.468908, 0.881403, 0.057040,
		-0.879520, -0.460029, -0.121727,
		16.333342, 17.943134, 22.270967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379965, 18.618010, 22.756981>,  <16.949007, 18.265154, 22.356176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379965, 18.618010, 22.756981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.301983, 18.228153, 22.713034>,  <16.255194, 17.994240, 22.686665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.301983, 18.228153, 22.713034>,  <16.379965, 18.618010, 22.756981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.301983, 18.228153, 22.713034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003906, -0.112789, 0.993611,
		-0.980804, 0.193280, 0.025796,
		-0.194955, -0.974639, -0.109869,
		16.243496, 17.935762, 22.680073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808978, 18.446062, 23.232525>,  <16.379965, 18.618010, 22.756981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808978, 18.446062, 23.232525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.989009, 18.097198, 23.155827>,  <16.097027, 17.887880, 23.109808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.989009, 18.097198, 23.155827>,  <15.808978, 18.446062, 23.232525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.989009, 18.097198, 23.155827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012586, -0.220897, 0.975216,
		-0.892901, -0.436508, -0.110398,
		0.450076, -0.872161, -0.191746,
		16.124031, 17.835550, 23.098303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.426220, 17.897240, 23.618048>,  <15.808978, 18.446062, 23.232525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.426220, 17.897240, 23.618048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.800178, 17.769657, 23.555769>,  <16.024551, 17.693108, 23.518402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.800178, 17.769657, 23.555769>,  <15.426220, 17.897240, 23.618048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800178, 17.769657, 23.555769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098965, -0.187019, 0.977359,
		-0.340854, -0.929134, -0.143277,
		0.934893, -0.318957, -0.155698,
		16.080647, 17.673971, 23.509060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427752, 17.391445, 24.052385>,  <15.426220, 17.897240, 23.618048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427752, 17.391445, 24.052385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.810546, 17.448139, 23.951122>,  <16.040222, 17.482155, 23.890364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.810546, 17.448139, 23.951122>,  <15.427752, 17.391445, 24.052385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810546, 17.448139, 23.951122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274996, -0.164942, 0.947191,
		0.092493, -0.976066, -0.196823,
		0.956986, 0.141734, -0.253159,
		16.097641, 17.490660, 23.875175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769878, 16.879320, 24.327328>,  <15.427752, 17.391445, 24.052385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769878, 16.879320, 24.327328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.059166, 17.148949, 24.267220>,  <16.232738, 17.310726, 24.231153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.059166, 17.148949, 24.267220>,  <15.769878, 16.879320, 24.327328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059166, 17.148949, 24.267220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327780, -0.143507, 0.933791,
		0.607877, -0.724592, -0.324734,
		0.723220, 0.674071, -0.150272,
		16.276133, 17.351170, 24.222137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382565, 16.639206, 24.629433>,  <15.769878, 16.879320, 24.327328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382565, 16.639206, 24.629433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.450680, 17.032616, 24.605165>,  <16.491549, 17.268661, 24.590605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.450680, 17.032616, 24.605165>,  <16.382565, 16.639206, 24.629433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450680, 17.032616, 24.605165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371440, -0.007040, 0.928430,
		0.912707, -0.180636, -0.366519,
		0.170288, 0.983525, -0.060670,
		16.501766, 17.327673, 24.586964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075430, 16.784737, 24.972591>,  <16.382565, 16.639206, 24.629433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075430, 16.784737, 24.972591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.900387, 17.144344, 24.966118>,  <16.795361, 17.360109, 24.962233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.900387, 17.144344, 24.966118>,  <17.075430, 16.784737, 24.972591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900387, 17.144344, 24.966118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413364, 0.217130, 0.884299,
		0.798517, 0.380285, -0.466641,
		-0.437608, 0.899020, -0.016186,
		16.769104, 17.414051, 24.961262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602486, 17.259108, 25.128555>,  <17.075430, 16.784737, 24.972591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602486, 17.259108, 25.128555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.236469, 17.377819, 25.237820>,  <17.016859, 17.449047, 25.303379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.236469, 17.377819, 25.237820>,  <17.602486, 17.259108, 25.128555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236469, 17.377819, 25.237820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324218, 0.138296, 0.935819,
		0.239956, 0.944879, -0.222768,
		-0.915043, 0.296781, 0.273162,
		16.961956, 17.466854, 25.319769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276846, 17.030991, 25.587463>,  <17.602486, 17.259108, 25.128555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276846, 17.030991, 25.587463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.563004, 16.751846, 25.601318>,  <18.734699, 16.584360, 25.609631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.563004, 16.751846, 25.601318>,  <18.276846, 17.030991, 25.587463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563004, 16.751846, 25.601318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023661, -0.025347, -0.999399,
		0.698318, 0.715786, -0.001622,
		0.715396, -0.697860, 0.034636,
		18.777622, 16.542488, 25.611710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.872093, 17.247738, 25.242624>,  <18.276846, 17.030991, 25.587463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.872093, 17.247738, 25.242624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.863094, 16.847950, 25.252073>,  <18.857695, 16.608078, 25.257742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.863094, 16.847950, 25.252073>,  <18.872093, 17.247738, 25.242624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863094, 16.847950, 25.252073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050559, -0.024735, -0.998415,
		0.998468, -0.021268, 0.051089,
		-0.022498, -0.999468, 0.023622,
		18.856344, 16.548109, 25.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433590, 16.972097, 24.975901>,  <18.872093, 17.247738, 25.242624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433590, 16.972097, 24.975901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.172794, 16.675758, 24.911331>,  <19.016317, 16.497955, 24.872589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.172794, 16.675758, 24.911331>,  <19.433590, 16.972097, 24.975901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172794, 16.675758, 24.911331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301836, -0.058296, -0.951576,
		0.695560, -0.669141, 0.261622,
		-0.651990, -0.740845, -0.161422,
		18.977198, 16.453505, 24.862904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678701, 16.654615, 24.473928>,  <19.433590, 16.972097, 24.975901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678701, 16.654615, 24.473928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.315338, 16.488625, 24.453585>,  <19.097321, 16.389030, 24.441380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.315338, 16.488625, 24.453585>,  <19.678701, 16.654615, 24.473928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315338, 16.488625, 24.453585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096714, -0.090236, -0.991213,
		0.406741, -0.905347, 0.122105,
		-0.908410, -0.414976, -0.050857,
		19.042814, 16.364132, 24.438328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666838, 16.228432, 23.929369>,  <19.678701, 16.654615, 24.473928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666838, 16.228432, 23.929369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.275261, 16.180119, 23.995197>,  <19.040316, 16.151131, 24.034695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.275261, 16.180119, 23.995197>,  <19.666838, 16.228432, 23.929369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275261, 16.180119, 23.995197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145326, -0.153811, -0.977355,
		0.143359, -0.980690, 0.133020,
		-0.978942, -0.120782, 0.164570,
		18.981579, 16.143885, 24.044569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473179, 15.609448, 23.543871>,  <19.666838, 16.228432, 23.929369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473179, 15.609448, 23.543871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.155731, 15.850647, 23.576277>,  <18.965263, 15.995366, 23.595720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.155731, 15.850647, 23.576277>,  <19.473179, 15.609448, 23.543871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155731, 15.850647, 23.576277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279597, -0.243194, -0.928807,
		-0.540365, -0.759770, 0.361600,
		-0.793619, 0.602997, 0.081016,
		18.917646, 16.031546, 23.600582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894842, 15.294990, 23.115465>,  <19.473179, 15.609448, 23.543871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894842, 15.294990, 23.115465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.795158, 15.680721, 23.151161>,  <18.735348, 15.912161, 23.172579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.795158, 15.680721, 23.151161>,  <18.894842, 15.294990, 23.115465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795158, 15.680721, 23.151161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120719, 0.060495, -0.990842,
		-0.960897, -0.257698, 0.101337,
		-0.249207, 0.964330, 0.089239,
		18.720396, 15.970020, 23.177933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358948, 15.327389, 22.755230>,  <18.894842, 15.294990, 23.115465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358948, 15.327389, 22.755230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.498722, 15.701061, 22.784079>,  <18.582586, 15.925264, 22.801388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.498722, 15.701061, 22.784079>,  <18.358948, 15.327389, 22.755230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498722, 15.701061, 22.784079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214675, 0.154750, -0.964348,
		-0.912036, 0.321494, 0.254620,
		0.349435, 0.934181, 0.072121,
		18.603552, 15.981316, 22.805716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796188, 15.763150, 22.435774>,  <18.358948, 15.327389, 22.755230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796188, 15.763150, 22.435774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.138092, 15.970100, 22.419239>,  <18.343235, 16.094271, 22.409319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.138092, 15.970100, 22.419239>,  <17.796188, 15.763150, 22.435774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.138092, 15.970100, 22.419239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190867, 0.239272, -0.952008,
		-0.482655, 0.821627, 0.303270,
		0.854760, 0.517376, -0.041336,
		18.394520, 16.125313, 22.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656410, 16.332607, 22.085857>,  <17.796188, 15.763150, 22.435774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656410, 16.332607, 22.085857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.055328, 16.320015, 22.059298>,  <18.294680, 16.312460, 22.043362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.055328, 16.320015, 22.059298>,  <17.656410, 16.332607, 22.085857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.055328, 16.320015, 22.059298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050799, 0.357567, -0.932505,
		0.053100, 0.933356, 0.355001,
		0.997296, -0.031482, -0.066401,
		18.354517, 16.310570, 22.039377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939531, 17.010284, 21.861181>,  <17.656410, 16.332607, 22.085857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939531, 17.010284, 21.861181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.247417, 16.770897, 21.772303>,  <18.432150, 16.627264, 21.718975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.247417, 16.770897, 21.772303>,  <17.939531, 17.010284, 21.861181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247417, 16.770897, 21.772303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100365, 0.457175, -0.883696,
		0.630447, 0.657894, 0.411961,
		0.769716, -0.598470, -0.222195,
		18.478333, 16.591356, 21.705645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372292, 17.447571, 21.533260>,  <17.939531, 17.010284, 21.861181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372292, 17.447571, 21.533260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.515640, 17.086563, 21.437737>,  <18.601650, 16.869959, 21.380423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.515640, 17.086563, 21.437737>,  <18.372292, 17.447571, 21.533260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515640, 17.086563, 21.437737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123387, 0.299343, -0.946134,
		0.925389, 0.309602, 0.218635,
		0.358371, -0.902519, -0.238809,
		18.623152, 16.815807, 21.366095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791367, 17.603662, 21.007973>,  <18.372292, 17.447571, 21.533260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791367, 17.603662, 21.007973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.749069, 17.208035, 20.966860>,  <18.723692, 16.970657, 20.942192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.749069, 17.208035, 20.966860>,  <18.791367, 17.603662, 21.007973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749069, 17.208035, 20.966860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097458, 0.092554, -0.990927,
		0.989606, -0.114800, 0.086606,
		-0.105743, -0.989068, -0.102780,
		18.717346, 16.911314, 20.936026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295103, 17.443525, 20.497786>,  <18.791367, 17.603662, 21.007973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295103, 17.443525, 20.497786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.034821, 17.140053, 20.485209>,  <18.878651, 16.957970, 20.477661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.034821, 17.140053, 20.485209>,  <19.295103, 17.443525, 20.497786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034821, 17.140053, 20.485209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121180, 0.144635, -0.982037,
		0.749599, -0.635206, -0.186052,
		-0.650705, -0.758680, -0.031444,
		18.839609, 16.912449, 20.475775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091150, 17.343397, 20.426268>,  <19.295103, 17.443525, 20.497786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091150, 17.343397, 20.426268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.316093, 17.672421, 20.460106>,  <20.451059, 17.869835, 20.480410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.316093, 17.672421, 20.460106>,  <20.091150, 17.343397, 20.426268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.316093, 17.672421, 20.460106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156803, 0.005630, 0.987614,
		0.811892, -0.568655, 0.132145,
		0.562356, 0.822556, 0.084596,
		20.484800, 17.919188, 20.485485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776852, 17.247463, 20.880983>,  <20.091150, 17.343397, 20.426268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776852, 17.247463, 20.880983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.719048, 17.643208, 20.887741>,  <20.684364, 17.880653, 20.891796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.719048, 17.643208, 20.887741>,  <20.776852, 17.247463, 20.880983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719048, 17.643208, 20.887741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064896, -0.026512, 0.997540,
		0.987373, 0.143060, 0.068037,
		-0.144511, 0.989359, 0.016893,
		20.675694, 17.940016, 20.892809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116266, 17.423079, 21.520054>,  <20.776852, 17.247463, 20.880983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116266, 17.423079, 21.520054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.940407, 17.767651, 21.418346>,  <20.834890, 17.974394, 21.357323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.940407, 17.767651, 21.418346>,  <21.116266, 17.423079, 21.520054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940407, 17.767651, 21.418346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089104, 0.323529, 0.942014,
		0.893739, 0.391499, -0.218995,
		-0.439648, 0.861428, -0.254267,
		20.808512, 18.026079, 21.342066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529406, 17.954323, 21.801023>,  <21.116266, 17.423079, 21.520054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529406, 17.954323, 21.801023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.153774, 18.086533, 21.763313>,  <20.928396, 18.165859, 21.740686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.153774, 18.086533, 21.763313>,  <21.529406, 17.954323, 21.801023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153774, 18.086533, 21.763313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064724, 0.439439, 0.895938,
		0.337557, 0.835253, -0.434060,
		-0.939077, 0.330525, -0.094275,
		20.872051, 18.185690, 21.735031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491796, 18.708231, 22.041075>,  <21.529406, 17.954323, 21.801023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491796, 18.708231, 22.041075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.124065, 18.558590, 22.089867>,  <20.903427, 18.468805, 22.119143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.124065, 18.558590, 22.089867>,  <21.491796, 18.708231, 22.041075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.124065, 18.558590, 22.089867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060959, 0.441663, 0.895108,
		-0.388738, 0.815463, -0.428839,
		-0.919329, -0.374104, 0.121982,
		20.848267, 18.446360, 22.126461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.015167, 19.265062, 22.153339>,  <21.491796, 18.708231, 22.041075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.015167, 19.265062, 22.153339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.883385, 18.929535, 22.326704>,  <20.804316, 18.728218, 22.430723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.883385, 18.929535, 22.326704>,  <21.015167, 19.265062, 22.153339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883385, 18.929535, 22.326704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160467, 0.502107, 0.849787,
		-0.930435, 0.210418, -0.300023,
		-0.329454, -0.838816, 0.433413,
		20.784548, 18.677891, 22.456728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649723, 19.485048, 22.664808>,  <21.015167, 19.265062, 22.153339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649723, 19.485048, 22.664808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.661884, 19.099537, 22.770798>,  <20.669180, 18.868231, 22.834391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.661884, 19.099537, 22.770798>,  <20.649723, 19.485048, 22.664808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661884, 19.099537, 22.770798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018354, 0.265590, 0.963912,
		-0.999369, -0.024440, 0.025764,
		0.030401, -0.963777, 0.264973,
		20.671005, 18.810404, 22.850290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.224392, 20.012604, 22.570402>,  <20.649723, 19.485048, 22.664808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.224392, 20.012604, 22.570402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.390656, 20.376411, 22.570152>,  <20.490414, 20.594696, 22.570002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.390656, 20.376411, 22.570152>,  <20.224392, 20.012604, 22.570402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390656, 20.376411, 22.570152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198111, -0.091211, -0.975927,
		-0.887681, 0.405531, -0.218099,
		0.415661, 0.909519, -0.000626,
		20.515354, 20.649267, 22.569965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937258, 20.347195, 22.034006>,  <20.224392, 20.012604, 22.570402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937258, 20.347195, 22.034006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.268578, 20.566231, 22.081453>,  <20.467369, 20.697653, 22.109921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.268578, 20.566231, 22.081453>,  <19.937258, 20.347195, 22.034006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.268578, 20.566231, 22.081453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162484, -0.032154, -0.986187,
		-0.536211, 0.836129, -0.115608,
		0.828297, 0.547589, 0.118616,
		20.517067, 20.730507, 22.117039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921646, 20.800722, 21.513744>,  <19.937258, 20.347195, 22.034006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921646, 20.800722, 21.513744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.301678, 20.810165, 21.638191>,  <20.529697, 20.815832, 21.712860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.301678, 20.810165, 21.638191>,  <19.921646, 20.800722, 21.513744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301678, 20.810165, 21.638191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306778, 0.111179, -0.945265,
		-0.056906, 0.993520, 0.098386,
		0.950079, 0.023609, 0.311117,
		20.586700, 20.817247, 21.731525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.189962, 21.442633, 21.250536>,  <19.921646, 20.800722, 21.513744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.189962, 21.442633, 21.250536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.526543, 21.247707, 21.343906>,  <20.728491, 21.130753, 21.399929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.526543, 21.247707, 21.343906>,  <20.189962, 21.442633, 21.250536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526543, 21.247707, 21.343906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388228, 0.244783, -0.888460,
		0.375821, 0.838216, 0.395162,
		0.841449, -0.487315, 0.233424,
		20.778978, 21.101513, 21.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796982, 21.777126, 20.918394>,  <20.189962, 21.442633, 21.250536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796982, 21.777126, 20.918394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.953121, 21.415894, 20.990032>,  <21.046804, 21.199154, 21.033014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.953121, 21.415894, 20.990032>,  <20.796982, 21.777126, 20.918394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.953121, 21.415894, 20.990032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358103, -0.030278, -0.933191,
		0.848170, 0.428402, 0.311577,
		0.390347, -0.903081, 0.179093,
		21.070225, 21.144970, 21.043760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568575, 21.847265, 20.673996>,  <20.796982, 21.777126, 20.918394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568575, 21.847265, 20.673996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.437088, 21.470020, 20.693951>,  <21.358196, 21.243673, 20.705923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.437088, 21.470020, 20.693951>,  <21.568575, 21.847265, 20.673996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.437088, 21.470020, 20.693951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289966, -0.151055, -0.945041,
		0.898814, -0.296184, 0.323124,
		-0.328716, -0.943111, 0.049887,
		21.338474, 21.187088, 20.708918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.086971, 21.615229, 20.311041>,  <21.568575, 21.847265, 20.673996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.086971, 21.615229, 20.311041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.816063, 21.320938, 20.312326>,  <21.653519, 21.144363, 20.313099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.816063, 21.320938, 20.312326>,  <22.086971, 21.615229, 20.311041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816063, 21.320938, 20.312326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364212, -0.339066, -0.867401,
		0.639260, -0.586295, 0.497600,
		-0.677272, -0.735726, 0.003216,
		21.612881, 21.100220, 20.313292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<17.479185, 20.088938, 24.757452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.194988, 19.829235, 24.648882>,  <17.024471, 19.673414, 24.583740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.194988, 19.829235, 24.648882>,  <17.479185, 20.088938, 24.757452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194988, 19.829235, 24.648882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271715, 0.102692, -0.956883,
		0.649134, -0.753607, 0.103451,
		-0.710490, -0.649254, -0.271427,
		16.981842, 19.634459, 24.567453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781975, 19.878363, 24.159557>,  <17.479185, 20.088938, 24.757452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781975, 19.878363, 24.159557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.399418, 19.767853, 24.121647>,  <17.169884, 19.701546, 24.098902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.399418, 19.767853, 24.121647>,  <17.781975, 19.878363, 24.159557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399418, 19.767853, 24.121647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088809, 0.034057, -0.995466,
		0.278252, -0.960474, -0.008036,
		-0.956393, -0.276277, -0.094775,
		17.112499, 19.684969, 24.093214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880568, 19.611736, 23.510757>,  <17.781975, 19.878363, 24.159557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880568, 19.611736, 23.510757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.490776, 19.665825, 23.582430>,  <17.256901, 19.698278, 23.625433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.490776, 19.665825, 23.582430>,  <17.880568, 19.611736, 23.510757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.490776, 19.665825, 23.582430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156277, 0.164340, -0.973945,
		-0.161145, -0.977091, -0.139014,
		-0.974479, 0.135221, 0.179180,
		17.198433, 19.706390, 23.636185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508947, 19.227501, 22.984989>,  <17.880568, 19.611736, 23.510757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508947, 19.227501, 22.984989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.251156, 19.508312, 23.106182>,  <17.096481, 19.676800, 23.178898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.251156, 19.508312, 23.106182>,  <17.508947, 19.227501, 22.984989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251156, 19.508312, 23.106182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184574, 0.241695, -0.952636,
		-0.742009, -0.669878, -0.026191,
		-0.644481, 0.702030, 0.302982,
		17.057812, 19.718922, 23.197077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980030, 19.272408, 22.368038>,  <17.508947, 19.227501, 22.984989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980030, 19.272408, 22.368038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.933136, 19.608917, 22.579136>,  <16.904999, 19.810823, 22.705793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.933136, 19.608917, 22.579136>,  <16.980030, 19.272408, 22.368038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933136, 19.608917, 22.579136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299246, 0.476783, -0.826517,
		-0.946946, -0.254822, 0.195852,
		-0.117236, 0.841275, 0.527742,
		16.897964, 19.861300, 22.737459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283474, 19.629261, 22.208441>,  <16.980030, 19.272408, 22.368038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283474, 19.629261, 22.208441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.541767, 19.901474, 22.346949>,  <16.696743, 20.064802, 22.430054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.541767, 19.901474, 22.346949>,  <16.283474, 19.629261, 22.208441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541767, 19.901474, 22.346949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286855, 0.636482, -0.715964,
		-0.707632, 0.362993, 0.606212,
		0.645733, 0.680534, 0.346269,
		16.735487, 20.105635, 22.450829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878185, 20.212709, 22.266197>,  <16.283474, 19.629261, 22.208441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878185, 20.212709, 22.266197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.248623, 20.363235, 22.255318>,  <16.470884, 20.453550, 22.248791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.248623, 20.363235, 22.255318>,  <15.878185, 20.212709, 22.266197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248623, 20.363235, 22.255318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272756, 0.617949, -0.737389,
		-0.260683, 0.690309, 0.674920,
		0.926093, 0.376313, -0.027198,
		16.526451, 20.476130, 22.247158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728048, 20.812790, 22.157457>,  <15.878185, 20.212709, 22.266197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728048, 20.812790, 22.157457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.113747, 20.802025, 22.052002>,  <16.345165, 20.795565, 21.988728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.113747, 20.802025, 22.052002>,  <15.728048, 20.812790, 22.157457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113747, 20.802025, 22.052002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200977, 0.574178, -0.793680,
		0.172738, 0.818288, 0.548239,
		0.964246, -0.026915, -0.263639,
		16.403021, 20.793951, 21.972910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965816, 21.487164, 22.098312>,  <15.728048, 20.812790, 22.157457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965816, 21.487164, 22.098312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.186626, 21.251438, 21.862354>,  <16.319113, 21.110003, 21.720779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.186626, 21.251438, 21.862354>,  <15.965816, 21.487164, 22.098312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186626, 21.251438, 21.862354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293512, 0.524840, -0.798995,
		0.780460, 0.614207, 0.116754,
		0.552025, -0.589315, -0.589894,
		16.352234, 21.074644, 21.685387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470726, 21.947472, 21.701370>,  <15.965816, 21.487164, 22.098312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.470726, 21.947472, 21.701370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.466389, 21.602352, 21.499197>,  <16.463787, 21.395281, 21.377893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.466389, 21.602352, 21.499197>,  <16.470726, 21.947472, 21.701370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466389, 21.602352, 21.499197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097756, 0.502129, -0.859250,
		0.995151, -0.058725, 0.078900,
		-0.010841, -0.862796, -0.505435,
		16.463137, 21.343513, 21.347567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859608, 22.147591, 21.046553>,  <16.470726, 21.947472, 21.701370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859608, 22.147591, 21.046553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.697224, 21.791325, 20.964663>,  <16.599794, 21.577564, 20.915527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.697224, 21.791325, 20.964663>,  <16.859608, 22.147591, 21.046553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697224, 21.791325, 20.964663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045720, 0.243530, -0.968815,
		0.912747, -0.383939, -0.139584,
		-0.405959, -0.890665, -0.204727,
		16.575436, 21.524126, 20.903244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333378, 21.740435, 20.672029>,  <16.859608, 22.147591, 21.046553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333378, 21.740435, 20.672029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.979797, 21.578671, 20.578150>,  <16.767649, 21.481613, 20.521822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.979797, 21.578671, 20.578150>,  <17.333378, 21.740435, 20.672029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979797, 21.578671, 20.578150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223454, 0.075554, -0.971782,
		0.410730, -0.911452, 0.023581,
		-0.883951, -0.404409, -0.234700,
		16.714613, 21.457348, 20.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046604, 21.723372, 20.853455>,  <17.333378, 21.740435, 20.672029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046604, 21.723372, 20.853455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.225544, 22.069168, 20.761778>,  <18.332909, 22.276646, 20.706772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.225544, 22.069168, 20.761778>,  <18.046604, 21.723372, 20.853455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225544, 22.069168, 20.761778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037449, 0.274146, 0.960959,
		0.893575, -0.421302, 0.155014,
		0.447350, 0.864493, -0.229193,
		18.359749, 22.328516, 20.693020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603521, 21.811533, 21.321535>,  <18.046604, 21.723372, 20.853455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603521, 21.811533, 21.321535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.499428, 22.178532, 21.201216>,  <18.436972, 22.398731, 21.129025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.499428, 22.178532, 21.201216>,  <18.603521, 21.811533, 21.321535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499428, 22.178532, 21.201216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022641, 0.317244, 0.948074,
		0.965280, 0.239909, -0.103330,
		-0.260233, 0.917497, -0.300797,
		18.421358, 22.453781, 21.110977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.966597, 22.206484, 21.759146>,  <18.603521, 21.811533, 21.321535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.966597, 22.206484, 21.759146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.703587, 22.469944, 21.612808>,  <18.545780, 22.628019, 21.525005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.703587, 22.469944, 21.612808>,  <18.966597, 22.206484, 21.759146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703587, 22.469944, 21.612808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006302, 0.480743, 0.876839,
		0.753405, 0.578851, -0.311951,
		-0.657527, 0.658648, -0.365842,
		18.506329, 22.667538, 21.503056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113884, 22.974857, 22.046116>,  <18.966597, 22.206484, 21.759146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113884, 22.974857, 22.046116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.732136, 22.962315, 21.927326>,  <18.503086, 22.954788, 21.856052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.732136, 22.962315, 21.927326>,  <19.113884, 22.974857, 22.046116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732136, 22.962315, 21.927326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289005, 0.347398, 0.892071,
		0.075195, 0.937194, -0.340609,
		-0.954370, -0.031358, -0.296976,
		18.445826, 22.952908, 21.838234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857349, 23.689211, 22.257874>,  <19.113884, 22.974857, 22.046116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857349, 23.689211, 22.257874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.556286, 23.431831, 22.202045>,  <18.375648, 23.277403, 22.168549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.556286, 23.431831, 22.202045>,  <18.857349, 23.689211, 22.257874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556286, 23.431831, 22.202045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400627, 0.279342, 0.872620,
		-0.522498, 0.712700, -0.468032,
		-0.752658, -0.643448, -0.139571,
		18.330488, 23.238796, 22.160173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267365, 23.958103, 22.632078>,  <18.857349, 23.689211, 22.257874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267365, 23.958103, 22.632078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.172314, 23.575085, 22.566790>,  <18.115284, 23.345274, 22.527617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.172314, 23.575085, 22.566790>,  <18.267365, 23.958103, 22.632078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172314, 23.575085, 22.566790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480439, -0.030183, 0.876509,
		-0.844223, 0.286701, -0.452869,
		-0.237627, -0.957545, -0.163223,
		18.101027, 23.287821, 22.517822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563080, 23.893324, 22.718220>,  <18.267365, 23.958103, 22.632078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563080, 23.893324, 22.718220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.725155, 23.536602, 22.798721>,  <17.822399, 23.322569, 22.847023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.725155, 23.536602, 22.798721>,  <17.563080, 23.893324, 22.718220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725155, 23.536602, 22.798721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419181, 0.014407, 0.907788,
		-0.812471, -0.452187, -0.367991,
		0.405188, -0.891807, 0.201254,
		17.846712, 23.269060, 22.859097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085949, 23.591707, 23.094824>,  <17.563080, 23.893324, 22.718220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085949, 23.591707, 23.094824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.414356, 23.376896, 23.172316>,  <17.611401, 23.248009, 23.218811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.414356, 23.376896, 23.172316>,  <17.085949, 23.591707, 23.094824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414356, 23.376896, 23.172316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175287, 0.085822, 0.980770,
		-0.543330, -0.839186, -0.023673,
		0.821016, -0.537031, 0.193728,
		17.660662, 23.215786, 23.230434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849247, 22.937134, 23.573671>,  <17.085949, 23.591707, 23.094824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849247, 22.937134, 23.573671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.243900, 22.985928, 23.616899>,  <17.480692, 23.015203, 23.642836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.243900, 22.985928, 23.616899>,  <16.849247, 22.937134, 23.573671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243900, 22.985928, 23.616899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095010, -0.108249, 0.989573,
		0.132412, -0.986611, -0.095212,
		0.986631, 0.121985, 0.108071,
		17.539890, 23.022522, 23.649321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881756, 22.497196, 24.096308>,  <16.849247, 22.937134, 23.573671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881756, 22.497196, 24.096308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.235271, 22.683723, 24.080984>,  <17.447380, 22.795639, 24.071791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.235271, 22.683723, 24.080984>,  <16.881756, 22.497196, 24.096308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235271, 22.683723, 24.080984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087397, -0.084092, 0.992618,
		0.459653, -0.880612, -0.115074,
		0.883788, 0.466317, -0.038310,
		17.500408, 22.823618, 24.069490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425877, 22.035833, 24.287588>,  <16.881756, 22.497196, 24.096308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425877, 22.035833, 24.287588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.573673, 22.397793, 24.372095>,  <17.662352, 22.614969, 24.422800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.573673, 22.397793, 24.372095>,  <17.425877, 22.035833, 24.287588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573673, 22.397793, 24.372095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248179, -0.315198, 0.916001,
		0.895478, -0.286025, -0.341040,
		0.369494, 0.904898, 0.211267,
		17.684521, 22.669262, 24.435474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927954, 21.865404, 24.679586>,  <17.425877, 22.035833, 24.287588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927954, 21.865404, 24.679586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.888813, 22.251331, 24.777201>,  <17.865328, 22.482887, 24.835770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.888813, 22.251331, 24.777201>,  <17.927954, 21.865404, 24.679586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888813, 22.251331, 24.777201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429992, -0.180155, 0.884676,
		0.897514, 0.191501, -0.397234,
		-0.097853, 0.964817, 0.244035,
		17.859457, 22.540777, 24.850410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585373, 22.043142, 25.014194>,  <17.927954, 21.865404, 24.679586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585373, 22.043142, 25.014194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.337868, 22.325439, 25.152214>,  <18.189365, 22.494818, 25.235025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.337868, 22.325439, 25.152214>,  <18.585373, 22.043142, 25.014194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337868, 22.325439, 25.152214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329164, -0.165891, 0.929587,
		0.713291, 0.688770, -0.129659,
		-0.618762, 0.705745, 0.345047,
		18.152239, 22.537163, 25.255728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.029493, 22.574495, 25.353355>,  <18.585373, 22.043142, 25.014194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.029493, 22.574495, 25.353355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.652893, 22.532406, 25.481419>,  <18.426933, 22.507153, 25.558256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.652893, 22.532406, 25.481419>,  <19.029493, 22.574495, 25.353355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.652893, 22.532406, 25.481419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336824, -0.325143, 0.883647,
		0.011117, 0.939793, 0.341565,
		-0.941502, -0.105224, 0.320159,
		18.370443, 22.500839, 25.577467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772251, 22.599070, 24.987803>,  <19.029493, 22.574495, 25.353355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772251, 22.599070, 24.987803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.061115, 22.331818, 25.059460>,  <20.234434, 22.171467, 25.102453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.061115, 22.331818, 25.059460>,  <19.772251, 22.599070, 24.987803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061115, 22.331818, 25.059460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006103, -0.252812, -0.967496,
		0.691701, 0.699779, -0.178492,
		0.722158, -0.668129, 0.179141,
		20.277763, 22.131378, 25.113201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328062, 22.729723, 24.520573>,  <19.772251, 22.599070, 24.987803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.328062, 22.729723, 24.520573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.334438, 22.342667, 24.621302>,  <20.338264, 22.110432, 24.681740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.334438, 22.342667, 24.621302>,  <20.328062, 22.729723, 24.520573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.334438, 22.342667, 24.621302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065053, -0.250317, -0.965976,
		0.997755, 0.031780, 0.058958,
		0.015941, -0.967642, 0.251823,
		20.339220, 22.052374, 24.696848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718939, 22.402283, 24.044271>,  <20.328062, 22.729723, 24.520573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718939, 22.402283, 24.044271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.544529, 22.080532, 24.205694>,  <20.439882, 21.887482, 24.302547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.544529, 22.080532, 24.205694>,  <20.718939, 22.402283, 24.044271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.544529, 22.080532, 24.205694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131615, -0.500604, -0.855612,
		0.890258, -0.319955, 0.324144,
		-0.436025, -0.804378, 0.403556,
		20.413721, 21.839218, 24.326761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247894, 21.873516, 23.993158>,  <20.718939, 22.402283, 24.044271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247894, 21.873516, 23.993158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.902348, 21.674450, 24.024311>,  <20.695021, 21.555010, 24.043003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.902348, 21.674450, 24.024311>,  <21.247894, 21.873516, 23.993158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902348, 21.674450, 24.024311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245555, -0.551050, -0.797525,
		0.439819, -0.669829, 0.598238,
		-0.863865, -0.497667, 0.077882,
		20.643188, 21.525150, 24.047676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.409483, 21.243404, 23.858036>,  <21.247894, 21.873516, 23.993158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.409483, 21.243404, 23.858036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.013023, 21.240070, 23.805044>,  <20.775146, 21.238070, 23.773249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.013023, 21.240070, 23.805044>,  <21.409483, 21.243404, 23.858036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013023, 21.240070, 23.805044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118317, -0.507943, -0.853226,
		-0.060179, -0.861350, 0.504435,
		-0.991150, -0.008337, -0.132480,
		20.715677, 21.237570, 23.765301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.196047, 20.447582, 23.595474>,  <21.409483, 21.243404, 23.858036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.196047, 20.447582, 23.595474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.900635, 20.700207, 23.501068>,  <20.723387, 20.851782, 23.444424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.900635, 20.700207, 23.501068>,  <21.196047, 20.447582, 23.595474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900635, 20.700207, 23.501068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000320, -0.349730, -0.936850,
		-0.674220, -0.691968, 0.258084,
		-0.738530, 0.631561, -0.236017,
		20.679075, 20.889675, 23.430264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.730371, 20.019764, 23.269049>,  <21.196047, 20.447582, 23.595474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.730371, 20.019764, 23.269049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.675793, 20.395313, 23.142620>,  <20.643045, 20.620642, 23.066763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.675793, 20.395313, 23.142620>,  <20.730371, 20.019764, 23.269049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675793, 20.395313, 23.142620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060018, -0.310637, -0.948632,
		-0.988828, -0.148407, -0.013964,
		-0.136446, 0.938872, -0.316073,
		20.634859, 20.676975, 23.047798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165060, 19.377073, 23.500420>,  <20.730371, 20.019764, 23.269049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.165060, 19.377073, 23.500420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.376232, 19.047802, 23.416832>,  <20.502935, 18.850239, 23.366680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.376232, 19.047802, 23.416832>,  <20.165060, 19.377073, 23.500420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376232, 19.047802, 23.416832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009538, -0.251784, 0.967737,
		-0.849233, -0.508906, -0.140776,
		0.527932, -0.823177, -0.208969,
		20.534613, 18.800850, 23.354141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816374, 18.810368, 23.852686>,  <20.165060, 19.377073, 23.500420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816374, 18.810368, 23.852686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.202061, 18.717323, 23.801805>,  <20.433472, 18.661497, 23.771276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.202061, 18.717323, 23.801805>,  <19.816374, 18.810368, 23.852686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.202061, 18.717323, 23.801805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035139, -0.363428, 0.930959,
		-0.262778, -0.902116, -0.342249,
		0.964216, -0.232609, -0.127201,
		20.491325, 18.647541, 23.763645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.877811, 18.028091, 24.007927>,  <19.816374, 18.810368, 23.852686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.877811, 18.028091, 24.007927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.251434, 18.169411, 24.028780>,  <20.475609, 18.254202, 24.041292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.251434, 18.169411, 24.028780>,  <19.877811, 18.028091, 24.007927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251434, 18.169411, 24.028780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087599, -0.368183, 0.925618,
		0.346215, -0.860012, -0.374853,
		0.934057, 0.353299, 0.052134,
		20.531651, 18.275400, 24.044420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.341188, 17.406036, 24.155792>,  <19.877811, 18.028091, 24.007927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.341188, 17.406036, 24.155792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.546997, 17.727859, 24.274420>,  <20.670483, 17.920954, 24.345596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.546997, 17.727859, 24.274420>,  <20.341188, 17.406036, 24.155792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546997, 17.727859, 24.274420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372649, -0.521302, 0.767709,
		0.772268, -0.284487, -0.568039,
		0.514524, 0.804557, 0.296571,
		20.701355, 17.969227, 24.363392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061760, 17.193008, 24.324816>,  <20.341188, 17.406036, 24.155792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061760, 17.193008, 24.324816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.979187, 17.538826, 24.508097>,  <20.929644, 17.746317, 24.618065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.979187, 17.538826, 24.508097>,  <21.061760, 17.193008, 24.324816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979187, 17.538826, 24.508097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480112, -0.318541, 0.817328,
		0.852571, 0.388714, -0.349319,
		-0.206434, 0.864542, 0.458205,
		20.917257, 17.798189, 24.645557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482355, 17.153498, 24.856001>,  <21.061760, 17.193008, 24.324816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482355, 17.153498, 24.856001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.244324, 17.454475, 24.968933>,  <21.101505, 17.635061, 25.036692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.244324, 17.454475, 24.968933>,  <21.482355, 17.153498, 24.856001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.244324, 17.454475, 24.968933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120436, -0.263839, 0.957018,
		0.794592, 0.603504, 0.066384,
		-0.595079, 0.752444, 0.282328,
		21.065800, 17.680208, 25.053631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.759830, 17.409836, 25.403790>,  <21.482355, 17.153498, 24.856001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.759830, 17.409836, 25.403790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.387806, 17.550755, 25.445496>,  <21.164591, 17.635305, 25.470518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.387806, 17.550755, 25.445496>,  <21.759830, 17.409836, 25.403790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387806, 17.550755, 25.445496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017903, -0.239993, 0.970610,
		0.366967, 0.904594, 0.216901,
		-0.930062, 0.352298, 0.104264,
		21.108788, 17.656445, 25.476774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.770334, 18.010509, 25.872993>,  <21.759830, 17.409836, 25.403790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.770334, 18.010509, 25.872993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.385933, 17.899982, 25.877361>,  <21.155293, 17.833666, 25.879982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.385933, 17.899982, 25.877361>,  <21.770334, 18.010509, 25.872993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385933, 17.899982, 25.877361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008003, 0.011685, 0.999900,
		-0.276416, 0.960996, -0.009018,
		-0.961005, -0.276316, 0.010920,
		21.097631, 17.817087, 25.880638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.576044, 18.388744, 26.402328>,  <21.770334, 18.010509, 25.872993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.576044, 18.388744, 26.402328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.317390, 18.085796, 26.365990>,  <21.162199, 17.904028, 26.344187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.317390, 18.085796, 26.365990>,  <21.576044, 18.388744, 26.402328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.317390, 18.085796, 26.365990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118317, -0.018068, 0.992811,
		-0.753568, 0.652735, -0.077927,
		-0.646635, -0.757371, -0.090846,
		21.123400, 17.858585, 26.338736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.980745, 19.273724, 10.898389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.664047, 19.030972, 10.926208>,  <20.474030, 18.885321, 10.942901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.664047, 19.030972, 10.926208>,  <20.980745, 19.273724, 10.898389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664047, 19.030972, 10.926208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241635, -0.206581, 0.948123,
		-0.561031, 0.767476, 0.310203,
		-0.791743, -0.606882, 0.069550,
		20.426525, 18.848907, 10.947074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807585, 19.288813, 11.616496>,  <20.980745, 19.273724, 10.898389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807585, 19.288813, 11.616496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.579540, 18.990070, 11.479570>,  <20.442713, 18.810825, 11.397415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.579540, 18.990070, 11.479570>,  <20.807585, 19.288813, 11.616496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579540, 18.990070, 11.479570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005853, -0.412956, 0.910732,
		-0.821547, 0.521222, 0.231059,
		-0.570111, -0.746857, -0.342314,
		20.408506, 18.766014, 11.376876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276653, 19.237024, 12.045128>,  <20.807585, 19.288813, 11.616496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276653, 19.237024, 12.045128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.281731, 18.866554, 11.894375>,  <20.284777, 18.644272, 11.803923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.281731, 18.866554, 11.894375>,  <20.276653, 19.237024, 12.045128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.281731, 18.866554, 11.894375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057306, -0.375620, 0.925000,
		-0.998276, -0.033340, 0.048307,
		0.012694, -0.926174, -0.376883,
		20.285540, 18.588701, 11.781310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949074, 18.796797, 12.539783>,  <20.276653, 19.237024, 12.045128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949074, 18.796797, 12.539783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.157238, 18.525238, 12.332603>,  <20.282137, 18.362303, 12.208294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.157238, 18.525238, 12.332603>,  <19.949074, 18.796797, 12.539783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.157238, 18.525238, 12.332603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129862, -0.536583, 0.833795,
		-0.843985, -0.501176, -0.191080,
		0.520408, -0.678897, -0.517952,
		20.313360, 18.321569, 12.177217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800747, 18.082750, 12.790772>,  <19.949074, 18.796797, 12.539783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800747, 18.082750, 12.790772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.155624, 18.048584, 12.609404>,  <20.368551, 18.028084, 12.500582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.155624, 18.048584, 12.609404>,  <19.800747, 18.082750, 12.790772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155624, 18.048584, 12.609404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340081, -0.543086, 0.767726,
		-0.311821, -0.835322, -0.452776,
		0.887194, -0.085412, -0.453422,
		20.421783, 18.022961, 12.473377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.049009, 17.355844, 12.782749>,  <19.800747, 18.082750, 12.790772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.049009, 17.355844, 12.782749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.380142, 17.577446, 12.747480>,  <20.578821, 17.710407, 12.726319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.380142, 17.577446, 12.747480>,  <20.049009, 17.355844, 12.782749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380142, 17.577446, 12.747480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421259, -0.510131, 0.749871,
		0.370451, -0.657912, -0.655682,
		0.827832, 0.554002, -0.088173,
		20.628492, 17.743647, 12.721028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603834, 16.889912, 12.804837>,  <20.049009, 17.355844, 12.782749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603834, 16.889912, 12.804837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.767616, 17.240562, 12.905928>,  <20.865887, 17.450953, 12.966582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.767616, 17.240562, 12.905928>,  <20.603834, 16.889912, 12.804837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767616, 17.240562, 12.905928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487060, -0.444273, 0.751926,
		0.771439, -0.184788, -0.608881,
		0.409457, 0.876627, 0.252727,
		20.890453, 17.503550, 12.981746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319893, 16.682016, 12.979662>,  <20.603834, 16.889912, 12.804837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319893, 16.682016, 12.979662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.273365, 17.047607, 13.135155>,  <21.245449, 17.266962, 13.228450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.273365, 17.047607, 13.135155>,  <21.319893, 16.682016, 12.979662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.273365, 17.047607, 13.135155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543025, -0.269189, 0.795400,
		0.831621, 0.303610, -0.465002,
		-0.116318, 0.913979, 0.388731,
		21.238470, 17.321802, 13.251774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.965473, 16.788233, 13.302675>,  <21.319893, 16.682016, 12.979662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.965473, 16.788233, 13.302675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.734001, 17.063641, 13.477520>,  <21.595118, 17.228886, 13.582427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.734001, 17.063641, 13.477520>,  <21.965473, 16.788233, 13.302675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734001, 17.063641, 13.477520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532681, -0.086756, 0.841858,
		0.617559, 0.720009, -0.316557,
		-0.578682, 0.688520, 0.437112,
		21.560396, 17.270197, 13.608654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.465637, 17.155334, 13.779556>,  <21.965473, 16.788233, 13.302675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.465637, 17.155334, 13.779556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.101192, 17.255421, 13.910564>,  <21.882526, 17.315472, 13.989169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.101192, 17.255421, 13.910564>,  <22.465637, 17.155334, 13.779556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.101192, 17.255421, 13.910564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371263, 0.153128, 0.915814,
		0.178998, 0.956005, -0.232411,
		-0.911111, 0.250214, 0.327519,
		21.827860, 17.330484, 14.008821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.584223, 17.793722, 14.149553>,  <22.465637, 17.155334, 13.779556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.584223, 17.793722, 14.149553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.246189, 17.606609, 14.253098>,  <22.043369, 17.494341, 14.315224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.246189, 17.606609, 14.253098>,  <22.584223, 17.793722, 14.149553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246189, 17.606609, 14.253098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300950, -0.016040, 0.953505,
		-0.441882, 0.883697, 0.154335,
		-0.845085, -0.467784, 0.258861,
		21.992664, 17.466274, 14.330756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290228, 18.235415, 14.616689>,  <22.584223, 17.793722, 14.149553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290228, 18.235415, 14.616689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.118732, 17.885357, 14.706404>,  <22.015835, 17.675322, 14.760233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.118732, 17.885357, 14.706404>,  <22.290228, 18.235415, 14.616689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118732, 17.885357, 14.706404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195813, 0.152344, 0.968736,
		-0.881954, 0.459251, 0.106049,
		-0.428737, -0.875146, 0.224288,
		21.990112, 17.622814, 14.773690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176229, 18.920275, 14.809388>,  <22.290228, 18.235415, 14.616689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176229, 18.920275, 14.809388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.461605, 19.199886, 14.828827>,  <22.632832, 19.367653, 14.840490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.461605, 19.199886, 14.828827>,  <22.176229, 18.920275, 14.809388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.461605, 19.199886, 14.828827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056360, 0.126375, -0.990380,
		-0.698445, 0.703839, 0.129559,
		0.713441, 0.699028, 0.048598,
		22.675638, 19.409595, 14.843407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013140, 19.386122, 14.358314>,  <22.176229, 18.920275, 14.809388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013140, 19.386122, 14.358314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.406460, 19.447216, 14.397898>,  <22.642452, 19.483873, 14.421648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.406460, 19.447216, 14.397898>,  <22.013140, 19.386122, 14.358314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406460, 19.447216, 14.397898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086251, 0.087713, -0.992405,
		-0.160258, 0.984367, 0.073075,
		0.983300, 0.152738, 0.098960,
		22.701450, 19.493038, 14.427586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.170088, 20.071178, 13.984127>,  <22.013140, 19.386122, 14.358314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.170088, 20.071178, 13.984127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.528069, 19.892921, 13.992739>,  <22.742857, 19.785967, 13.997906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.528069, 19.892921, 13.992739>,  <22.170088, 20.071178, 13.984127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528069, 19.892921, 13.992739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211261, 0.380772, -0.900212,
		0.392974, 0.810195, 0.434920,
		0.894952, -0.445642, 0.021529,
		22.796555, 19.759230, 13.999197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.501520, 20.480263, 13.608060>,  <22.170088, 20.071178, 13.984127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.501520, 20.480263, 13.608060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.740498, 20.160191, 13.587009>,  <22.883884, 19.968147, 13.574379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.740498, 20.160191, 13.587009>,  <22.501520, 20.480263, 13.608060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.740498, 20.160191, 13.587009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249402, 0.247781, -0.936164,
		0.762142, 0.546180, 0.347602,
		0.597443, -0.800182, -0.052626,
		22.919731, 19.920135, 13.571221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119390, 20.724274, 13.306650>,  <22.501520, 20.480263, 13.608060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119390, 20.724274, 13.306650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.146233, 20.329224, 13.249952>,  <23.162338, 20.092194, 13.215934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.146233, 20.329224, 13.249952>,  <23.119390, 20.724274, 13.306650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146233, 20.329224, 13.249952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139099, 0.149938, -0.978862,
		0.988002, 0.045969, 0.147439,
		0.067104, -0.987626, -0.141745,
		23.166363, 20.032936, 13.207429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.700602, 20.599043, 12.868399>,  <23.119390, 20.724274, 13.306650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.700602, 20.599043, 12.868399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.452522, 20.286903, 12.836374>,  <23.303675, 20.099619, 12.817160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.452522, 20.286903, 12.836374>,  <23.700602, 20.599043, 12.868399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.452522, 20.286903, 12.836374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148153, -0.016298, -0.988830,
		0.770329, -0.625130, 0.125720,
		-0.620196, -0.780351, -0.080060,
		23.266464, 20.052797, 12.812356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.995304, 20.038685, 12.562320>,  <23.700602, 20.599043, 12.868399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.995304, 20.038685, 12.562320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.613388, 19.937397, 12.500021>,  <23.384239, 19.876625, 12.462642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.613388, 19.937397, 12.500021>,  <23.995304, 20.038685, 12.562320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.613388, 19.937397, 12.500021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138985, 0.082905, -0.986818,
		0.262794, -0.963850, -0.043964,
		-0.954789, -0.253219, -0.155748,
		23.326952, 19.861431, 12.453297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.970480, 19.773674, 11.964018>,  <23.995304, 20.038685, 12.562320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.970480, 19.773674, 11.964018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.571297, 19.763489, 11.987460>,  <23.331787, 19.757378, 12.001526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.571297, 19.763489, 11.987460>,  <23.970480, 19.773674, 11.964018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.571297, 19.763489, 11.987460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059658, 0.042733, -0.997304,
		0.022881, -0.998762, -0.044165,
		-0.997956, -0.025454, 0.058606,
		23.271910, 19.755850, 12.005042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784575, 19.298861, 11.477147>,  <23.970480, 19.773674, 11.964018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784575, 19.298861, 11.477147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.470730, 19.535236, 11.552162>,  <23.282423, 19.677063, 11.597172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.470730, 19.535236, 11.552162>,  <23.784575, 19.298861, 11.477147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.470730, 19.535236, 11.552162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235393, -0.004104, -0.971892,
		-0.573561, -0.806704, 0.142324,
		-0.784613, 0.590941, 0.187538,
		23.235346, 19.712519, 11.608423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.279734, 19.007532, 11.129117>,  <23.784575, 19.298861, 11.477147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.279734, 19.007532, 11.129117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.156727, 19.384991, 11.178051>,  <23.082922, 19.611465, 11.207412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.156727, 19.384991, 11.178051>,  <23.279734, 19.007532, 11.129117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156727, 19.384991, 11.178051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282107, 0.032370, -0.958837,
		-0.908762, -0.329372, 0.256255,
		-0.307519, 0.943645, 0.122335,
		23.064470, 19.668085, 11.214751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596340, 19.045244, 10.872623>,  <23.279734, 19.007532, 11.129117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596340, 19.045244, 10.872623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.734356, 19.420601, 10.864959>,  <22.817165, 19.645815, 10.860360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.734356, 19.420601, 10.864959>,  <22.596340, 19.045244, 10.872623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734356, 19.420601, 10.864959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418908, 0.135696, -0.897832,
		-0.839919, 0.317814, 0.439920,
		0.345039, 0.938393, -0.019161,
		22.837868, 19.702118, 10.859210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016834, 19.368080, 10.596354>,  <22.596340, 19.045244, 10.872623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016834, 19.368080, 10.596354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.290203, 19.655136, 10.542803>,  <22.454226, 19.827370, 10.510672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.290203, 19.655136, 10.542803>,  <22.016834, 19.368080, 10.596354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.290203, 19.655136, 10.542803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335839, 0.146237, -0.930498,
		-0.648185, 0.680887, 0.340953,
		0.683424, 0.717640, -0.133880,
		22.495230, 19.870428, 10.502639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.649031, 19.995422, 10.433646>,  <22.016834, 19.368080, 10.596354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.649031, 19.995422, 10.433646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.022305, 20.018219, 10.291705>,  <22.246269, 20.031897, 10.206540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.022305, 20.018219, 10.291705>,  <21.649031, 19.995422, 10.433646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.022305, 20.018219, 10.291705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357614, 0.245555, -0.901008,
		0.035787, 0.967706, 0.249529,
		0.933184, 0.056990, -0.354853,
		22.302259, 20.035316, 10.185249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675123, 20.501759, 10.018202>,  <21.649031, 19.995422, 10.433646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675123, 20.501759, 10.018202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.022949, 20.336903, 9.909396>,  <22.231646, 20.237989, 9.844112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.022949, 20.336903, 9.909396>,  <21.675123, 20.501759, 10.018202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.022949, 20.336903, 9.909396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296031, 0.005821, -0.955161,
		0.395245, 0.911101, -0.116945,
		0.869567, -0.412142, -0.272015,
		22.283819, 20.213261, 9.827792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994917, 20.738750, 10.103583>,  <21.675123, 20.501759, 10.018202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994917, 20.738750, 10.103583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.984444, 20.359436, 10.230116>,  <20.978159, 20.131847, 10.306035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.984444, 20.359436, 10.230116>,  <20.994917, 20.738750, 10.103583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.984444, 20.359436, 10.230116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244135, 0.312924, 0.917865,
		-0.969388, -0.053195, -0.239703,
		-0.026183, -0.948287, 0.316331,
		20.976589, 20.074949, 10.325015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888462, 21.440844, 10.323428>,  <20.994917, 20.738750, 10.103583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888462, 21.440844, 10.323428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.502499, 21.346470, 10.277318>,  <20.270922, 21.289846, 10.249652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.502499, 21.346470, 10.277318>,  <20.888462, 21.440844, 10.323428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.502499, 21.346470, 10.277318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174271, 0.246985, 0.953220,
		-0.196426, 0.939858, -0.279434,
		-0.964907, -0.235934, -0.115276,
		20.213026, 21.275690, 10.242735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.511854, 21.939060, 10.597140>,  <20.888462, 21.440844, 10.323428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.511854, 21.939060, 10.597140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.280010, 21.613106, 10.595677>,  <20.140903, 21.417534, 10.594800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.280010, 21.613106, 10.595677>,  <20.511854, 21.939060, 10.597140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.280010, 21.613106, 10.595677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251413, 0.174551, 0.952010,
		-0.775141, 0.552715, -0.306044,
		-0.579610, -0.814885, -0.003658,
		20.106127, 21.368641, 10.594580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972801, 22.146688, 10.967010>,  <20.511854, 21.939060, 10.597140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972801, 22.146688, 10.967010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.958897, 21.748344, 11.000616>,  <19.950554, 21.509338, 11.020780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.958897, 21.748344, 11.000616>,  <19.972801, 22.146688, 10.967010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958897, 21.748344, 11.000616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278497, 0.090389, 0.956174,
		-0.959808, 0.009839, -0.280485,
		-0.034761, -0.995858, 0.084016,
		19.948469, 21.449587, 11.025821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222198, 21.951649, 11.307590>,  <19.972801, 22.146688, 10.967010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222198, 21.951649, 11.307590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.499722, 21.666962, 11.351573>,  <19.666235, 21.496149, 11.377962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.499722, 21.666962, 11.351573>,  <19.222198, 21.951649, 11.307590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.499722, 21.666962, 11.351573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202530, -0.046311, 0.978180,
		-0.691094, -0.700939, -0.176275,
		0.693808, -0.711716, 0.109956,
		19.707865, 21.453447, 11.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929504, 21.507011, 11.951597>,  <19.222198, 21.951649, 11.307590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929504, 21.507011, 11.951597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.298241, 21.354637, 11.923031>,  <19.519482, 21.263212, 11.905891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.298241, 21.354637, 11.923031>,  <18.929504, 21.507011, 11.951597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.298241, 21.354637, 11.923031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077781, 0.001317, 0.996970,
		-0.379689, -0.924600, 0.030843,
		0.921838, -0.380938, -0.071416,
		19.574793, 21.240356, 11.901606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.920652, 20.889030, 12.360351>,  <18.929504, 21.507011, 11.951597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.920652, 20.889030, 12.360351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.301357, 21.006901, 12.326138>,  <19.529779, 21.077623, 12.305612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.301357, 21.006901, 12.326138>,  <18.920652, 20.889030, 12.360351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301357, 21.006901, 12.326138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137900, -0.161781, 0.977144,
		0.274105, -0.941803, -0.194613,
		0.951762, 0.294677, -0.085529,
		19.586885, 21.095304, 12.300480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.253412, 20.348040, 12.631591>,  <18.920652, 20.889030, 12.360351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.253412, 20.348040, 12.631591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.502647, 20.660461, 12.648165>,  <19.652187, 20.847914, 12.658109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.502647, 20.660461, 12.648165>,  <19.253412, 20.348040, 12.631591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502647, 20.660461, 12.648165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175605, -0.191319, 0.965691,
		0.762185, -0.594433, -0.256365,
		0.623086, 0.781055, 0.041435,
		19.689573, 20.894777, 12.660595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733397, 20.198755, 13.149162>,  <19.253412, 20.348040, 12.631591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733397, 20.198755, 13.149162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.771416, 20.595196, 13.111893>,  <19.794228, 20.833061, 13.089531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.771416, 20.595196, 13.111893>,  <19.733397, 20.198755, 13.149162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771416, 20.595196, 13.111893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225421, 0.069739, 0.971762,
		0.969614, -0.113368, -0.216787,
		0.095048, 0.991102, -0.093175,
		19.799931, 20.892527, 13.083941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375767, 20.352015, 13.467072>,  <19.733397, 20.198755, 13.149162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375767, 20.352015, 13.467072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.140980, 20.675674, 13.456154>,  <20.000107, 20.869871, 13.449603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.140980, 20.675674, 13.456154>,  <20.375767, 20.352015, 13.467072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140980, 20.675674, 13.456154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175991, 0.160428, 0.971231,
		0.790249, 0.565279, -0.236570,
		-0.586969, 0.809149, -0.027294,
		19.964890, 20.918419, 13.447966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674952, 20.832546, 13.939331>,  <20.375767, 20.352015, 13.467072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674952, 20.832546, 13.939331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.300350, 20.960892, 13.882755>,  <20.075588, 21.037899, 13.848809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.300350, 20.960892, 13.882755>,  <20.674952, 20.832546, 13.939331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300350, 20.960892, 13.882755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077049, 0.205207, 0.975681,
		0.342084, 0.924628, -0.167456,
		-0.936505, 0.320862, -0.141440,
		20.019398, 21.057150, 13.840323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655598, 21.299849, 14.400619>,  <20.674952, 20.832546, 13.939331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655598, 21.299849, 14.400619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.267712, 21.247803, 14.317936>,  <20.034981, 21.216576, 14.268327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.267712, 21.247803, 14.317936>,  <20.655598, 21.299849, 14.400619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267712, 21.247803, 14.317936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228776, 0.187429, 0.955266,
		-0.085550, 0.973623, -0.211519,
		-0.969713, -0.130113, -0.206706,
		19.976797, 21.208769, 14.255924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173740, 21.864452, 14.818484>,  <20.655598, 21.299849, 14.400619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173740, 21.864452, 14.818484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.962238, 21.534431, 14.738775>,  <19.835337, 21.336420, 14.690949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.962238, 21.534431, 14.738775>,  <20.173740, 21.864452, 14.818484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962238, 21.534431, 14.738775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234748, -0.083467, 0.968466,
		-0.815667, 0.558859, -0.149546,
		-0.528754, -0.825051, -0.199272,
		19.803612, 21.286917, 14.678993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448212, 22.094126, 15.139370>,  <20.173740, 21.864452, 14.818484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448212, 22.094126, 15.139370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.473705, 21.700394, 15.073601>,  <19.489002, 21.464155, 15.034140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.473705, 21.700394, 15.073601>,  <19.448212, 22.094126, 15.139370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.473705, 21.700394, 15.073601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162750, -0.172803, 0.971417,
		-0.984607, -0.035152, -0.171213,
		0.063734, -0.984329, -0.164422,
		19.492825, 21.405094, 15.024274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911381, 21.814194, 15.528336>,  <19.448212, 22.094126, 15.139370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911381, 21.814194, 15.528336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.163033, 21.509949, 15.464254>,  <19.314024, 21.327402, 15.425805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.163033, 21.509949, 15.464254>,  <18.911381, 21.814194, 15.528336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163033, 21.509949, 15.464254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111056, -0.291945, 0.949966,
		-0.769328, -0.579858, -0.268141,
		0.629127, -0.760614, -0.160204,
		19.351770, 21.281765, 15.416193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.531021, 21.278271, 15.672099>,  <18.911381, 21.814194, 15.528336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.531021, 21.278271, 15.672099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.919437, 21.201546, 15.729073>,  <19.152487, 21.155510, 15.763257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.919437, 21.201546, 15.729073>,  <18.531021, 21.278271, 15.672099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919437, 21.201546, 15.729073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181425, -0.204118, 0.961988,
		-0.155444, -0.959971, -0.233006,
		0.971042, -0.191809, 0.142434,
		19.210751, 21.144003, 15.771803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.491022, 20.836685, 16.209612>,  <18.531021, 21.278271, 15.672099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.491022, 20.836685, 16.209612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.881992, 20.921062, 16.204878>,  <19.116575, 20.971689, 16.202038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.881992, 20.921062, 16.204878>,  <18.491022, 20.836685, 16.209612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881992, 20.921062, 16.204878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048132, -0.167778, 0.984649,
		0.205721, -0.962992, -0.174144,
		0.977426, 0.210945, -0.011835,
		19.175220, 20.984346, 16.201326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749868, 20.447941, 16.822742>,  <18.491022, 20.836685, 16.209612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749868, 20.447941, 16.822742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.056637, 20.692966, 16.746218>,  <19.240698, 20.839981, 16.700302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.056637, 20.692966, 16.746218>,  <18.749868, 20.447941, 16.822742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056637, 20.692966, 16.746218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120317, 0.155581, 0.980468,
		0.630364, -0.774958, 0.045617,
		0.766919, 0.612564, -0.191313,
		19.286713, 20.876736, 16.688824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250456, 20.240067, 17.225561>,  <18.749868, 20.447941, 16.822742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.250456, 20.240067, 17.225561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.303101, 20.628857, 17.147648>,  <19.334686, 20.862131, 17.100899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.303101, 20.628857, 17.147648>,  <19.250456, 20.240067, 17.225561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303101, 20.628857, 17.147648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037078, 0.191530, 0.980786,
		0.990608, -0.136303, -0.010831,
		0.131609, 0.971977, -0.194785,
		19.342583, 20.920450, 17.089212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.854162, 20.355238, 17.538330>,  <19.250456, 20.240067, 17.225561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.854162, 20.355238, 17.538330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.667019, 20.703506, 17.477621>,  <19.554733, 20.912468, 17.441195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.667019, 20.703506, 17.477621>,  <19.854162, 20.355238, 17.538330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667019, 20.703506, 17.477621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068765, 0.207070, 0.975907,
		0.881123, 0.446151, -0.156751,
		-0.467860, 0.870673, -0.151775,
		19.526661, 20.964708, 17.432089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134748, 20.761301, 18.048786>,  <19.854162, 20.355238, 17.538330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134748, 20.761301, 18.048786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.827221, 20.995411, 17.945734>,  <19.642704, 21.135876, 17.883902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.827221, 20.995411, 17.945734>,  <20.134748, 20.761301, 18.048786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827221, 20.995411, 17.945734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006592, 0.395611, 0.918395,
		0.639433, 0.707777, -0.300295,
		-0.768818, 0.585272, -0.257632,
		19.596575, 21.170992, 17.868444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296930, 21.412128, 18.289934>,  <20.134748, 20.761301, 18.048786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296930, 21.412128, 18.289934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.899502, 21.417030, 18.244925>,  <19.661045, 21.419971, 18.217918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.899502, 21.417030, 18.244925>,  <20.296930, 21.412128, 18.289934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899502, 21.417030, 18.244925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085044, 0.575212, 0.813572,
		0.074694, 0.817913, -0.570473,
		-0.993574, 0.012254, -0.112523,
		19.601429, 21.420706, 18.211168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116285, 22.035370, 18.472372>,  <20.296930, 21.412128, 18.289934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116285, 22.035370, 18.472372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.758488, 21.858997, 18.501921>,  <19.543808, 21.753174, 18.519650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.758488, 21.858997, 18.501921>,  <20.116285, 22.035370, 18.472372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758488, 21.858997, 18.501921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250123, 0.630510, 0.734776,
		-0.370562, 0.638777, -0.674275,
		-0.894495, -0.440932, 0.073870,
		19.490139, 21.726717, 18.524082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641888, 22.556595, 18.558867>,  <20.116285, 22.035370, 18.472372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641888, 22.556595, 18.558867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.446831, 22.235718, 18.696676>,  <19.329798, 22.043192, 18.779362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.446831, 22.235718, 18.696676>,  <19.641888, 22.556595, 18.558867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.446831, 22.235718, 18.696676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322352, 0.532178, 0.782864,
		-0.811354, 0.270698, -0.518100,
		-0.487641, -0.802191, 0.344525,
		19.300539, 21.995060, 18.800034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926956, 22.749937, 18.676550>,  <19.641888, 22.556595, 18.558867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926956, 22.749937, 18.676550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.938126, 22.427391, 18.912853>,  <18.944828, 22.233864, 19.054636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.938126, 22.427391, 18.912853>,  <18.926956, 22.749937, 18.676550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938126, 22.427391, 18.912853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309911, 0.554885, 0.772048,
		-0.950355, -0.204642, -0.234407,
		0.027924, -0.806365, 0.590758,
		18.946503, 22.185482, 19.090080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295012, 22.758978, 19.063244>,  <18.926956, 22.749937, 18.676550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295012, 22.758978, 19.063244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.545399, 22.534351, 19.279690>,  <18.695631, 22.399576, 19.409557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.545399, 22.534351, 19.279690>,  <18.295012, 22.758978, 19.063244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545399, 22.534351, 19.279690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351647, 0.416074, 0.838586,
		-0.696065, -0.715212, 0.062977,
		0.625970, -0.561565, 0.541116,
		18.733191, 22.365881, 19.442024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878229, 22.480394, 19.495491>,  <18.295012, 22.758978, 19.063244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878229, 22.480394, 19.495491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.218987, 22.394222, 19.686432>,  <18.423441, 22.342518, 19.800997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.218987, 22.394222, 19.686432>,  <17.878229, 22.480394, 19.495491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218987, 22.394222, 19.686432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410436, 0.291517, 0.864037,
		-0.325298, -0.931991, 0.159920,
		0.851894, -0.215432, 0.477352,
		18.474554, 22.329592, 19.829638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748249, 22.051851, 20.146271>,  <17.878229, 22.480394, 19.495491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748249, 22.051851, 20.146271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.105293, 22.223377, 20.201933>,  <18.319519, 22.326292, 20.235331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.105293, 22.223377, 20.201933>,  <17.748249, 22.051851, 20.146271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105293, 22.223377, 20.201933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283632, 0.294222, 0.912681,
		0.350429, -0.854137, 0.384251,
		0.892609, 0.428816, 0.139157,
		18.373075, 22.352022, 20.243681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487408, 21.323956, 19.981859>,  <17.748249, 22.051851, 20.146271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487408, 21.323956, 19.981859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.092812, 21.379547, 20.016548>,  <16.856054, 21.412903, 20.037361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.092812, 21.379547, 20.016548>,  <17.487408, 21.323956, 19.981859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092812, 21.379547, 20.016548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073777, 0.095735, -0.992669,
		-0.146263, -0.985657, -0.084188,
		-0.986491, 0.138980, 0.086721,
		16.796864, 21.421242, 20.042564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224228, 20.920151, 19.507132>,  <17.487408, 21.323956, 19.981859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224228, 20.920151, 19.507132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.928341, 21.183018, 19.565022>,  <16.750809, 21.340738, 19.599754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.928341, 21.183018, 19.565022>,  <17.224228, 20.920151, 19.507132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928341, 21.183018, 19.565022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133649, 0.067306, -0.988741,
		-0.659511, -0.750732, 0.038042,
		-0.739718, 0.657170, 0.144724,
		16.706425, 21.380169, 19.608438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537893, 20.655960, 19.094582>,  <17.224228, 20.920151, 19.507132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537893, 20.655960, 19.094582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.484966, 21.047867, 19.154650>,  <16.453211, 21.283010, 19.190691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.484966, 21.047867, 19.154650>,  <16.537893, 20.655960, 19.094582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.484966, 21.047867, 19.154650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229198, 0.117153, -0.966304,
		-0.964345, -0.162275, 0.209060,
		-0.132315, 0.979766, 0.150169,
		16.445272, 21.341797, 19.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907194, 20.805523, 18.923937>,  <16.537893, 20.655960, 19.094582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907194, 20.805523, 18.923937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.088619, 21.161316, 18.901667>,  <16.197475, 21.374792, 18.888304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.088619, 21.161316, 18.901667>,  <15.907194, 20.805523, 18.923937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.088619, 21.161316, 18.901667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222538, 0.052540, -0.973507,
		-0.862993, 0.453938, 0.221774,
		0.453564, 0.889483, -0.055677,
		16.224688, 21.428162, 18.884964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603271, 21.279612, 18.427767>,  <15.907194, 20.805523, 18.923937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.603271, 21.279612, 18.427767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.970229, 21.436489, 18.454819>,  <16.190403, 21.530615, 18.471050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.970229, 21.436489, 18.454819>,  <15.603271, 21.279612, 18.427767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970229, 21.436489, 18.454819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001956, 0.165483, -0.986211,
		-0.397975, 0.904876, 0.151047,
		0.917394, 0.392192, 0.067628,
		16.245447, 21.554146, 18.475107>
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
