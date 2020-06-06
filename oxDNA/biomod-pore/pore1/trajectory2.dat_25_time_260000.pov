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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<46.341145, 39.942665, 44.353764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447800, 40.173882, 44.662251>,  <46.511791, 40.312611, 44.847343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447800, 40.173882, 44.662251>,  <46.341145, 39.942665, 44.353764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447800, 40.173882, 44.662251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401543, -0.660802, 0.634117,
		0.876167, -0.478754, 0.055916,
		0.266636, 0.578045, 0.771213,
		46.527790, 40.347294, 44.893616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593662, 39.487370, 44.850391>,  <46.341145, 39.942665, 44.353764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593662, 39.487370, 44.850391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510925, 39.816368, 45.062325>,  <46.461285, 40.013767, 45.189484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510925, 39.816368, 45.062325>,  <46.593662, 39.487370, 44.850391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510925, 39.816368, 45.062325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594359, -0.535792, 0.599720,
		0.777145, -0.190863, 0.599681,
		-0.206840, 0.822495, 0.529829,
		46.448872, 40.063118, 45.221272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696579, 39.249313, 45.542725>,  <46.593662, 39.487370, 44.850391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696579, 39.249313, 45.542725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491570, 39.590080, 45.585720>,  <46.368565, 39.794540, 45.611515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491570, 39.590080, 45.585720>,  <46.696579, 39.249313, 45.542725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491570, 39.590080, 45.585720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528340, -0.411547, 0.742621,
		0.676891, 0.323819, 0.661030,
		-0.512519, 0.851922, 0.107486,
		46.337814, 39.845657, 45.617966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716335, 39.577866, 46.236427>,  <46.696579, 39.249313, 45.542725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716335, 39.577866, 46.236427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378235, 39.742783, 46.100452>,  <46.175373, 39.841732, 46.018867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378235, 39.742783, 46.100452>,  <46.716335, 39.577866, 46.236427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378235, 39.742783, 46.100452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493238, -0.357248, 0.793152,
		0.205570, 0.838085, 0.505326,
		-0.845256, 0.412294, -0.339936,
		46.124657, 39.866470, 45.998470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390186, 39.866699, 46.789593>,  <46.716335, 39.577866, 46.236427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390186, 39.866699, 46.789593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095177, 39.824196, 46.522827>,  <45.918171, 39.798695, 46.362770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095177, 39.824196, 46.522827>,  <46.390186, 39.866699, 46.789593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095177, 39.824196, 46.522827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619288, -0.287442, 0.730657,
		-0.269338, 0.951885, 0.146189,
		-0.737523, -0.106261, -0.666910,
		45.873920, 39.792316, 46.322754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871040, 40.249969, 47.076851>,  <46.390186, 39.866699, 46.789593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871040, 40.249969, 47.076851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679649, 40.022385, 46.809319>,  <45.564816, 39.885834, 46.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679649, 40.022385, 46.809319>,  <45.871040, 40.249969, 47.076851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679649, 40.022385, 46.809319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723680, -0.175891, 0.667346,
		-0.497338, 0.803331, -0.327588,
		-0.478480, -0.568965, -0.668832,
		45.536106, 39.851696, 46.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076832, 40.328350, 47.173569>,  <45.871040, 40.249969, 47.076851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076832, 40.328350, 47.173569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.146286, 39.974113, 47.001251>,  <45.187958, 39.761574, 46.897861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.146286, 39.974113, 47.001251>,  <45.076832, 40.328350, 47.173569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146286, 39.974113, 47.001251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705293, -0.417123, 0.573210,
		-0.687322, 0.204304, -0.697029,
		0.173638, -0.885589, -0.430792,
		45.198376, 39.708435, 46.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438728, 40.077644, 47.024284>,  <45.076832, 40.328350, 47.173569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438728, 40.077644, 47.024284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646931, 39.737091, 46.998295>,  <44.771854, 39.532761, 46.982700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646931, 39.737091, 46.998295>,  <44.438728, 40.077644, 47.024284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646931, 39.737091, 46.998295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731418, -0.483843, 0.480545,
		-0.440565, -0.202604, -0.874560,
		0.520510, -0.851380, -0.064976,
		44.803082, 39.481678, 46.978802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879749, 39.505764, 46.716228>,  <44.438728, 40.077644, 47.024284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879749, 39.505764, 46.716228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189804, 39.333420, 46.901062>,  <44.375835, 39.230011, 47.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189804, 39.333420, 46.901062>,  <43.879749, 39.505764, 46.716228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189804, 39.333420, 46.901062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614540, -0.683955, 0.393125,
		0.146664, -0.588696, -0.794938,
		0.775133, -0.430864, 0.462088,
		44.422344, 39.204159, 47.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683270, 38.811832, 46.720604>,  <43.879749, 39.505764, 46.716228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683270, 38.811832, 46.720604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968510, 38.844040, 46.999176>,  <44.139652, 38.863365, 47.166317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968510, 38.844040, 46.999176>,  <43.683270, 38.811832, 46.720604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968510, 38.844040, 46.999176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530209, -0.587969, 0.610877,
		0.458663, -0.804866, -0.376588,
		0.713097, 0.080516, 0.696427,
		44.182438, 38.868195, 47.208103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611492, 38.253731, 47.107365>,  <43.683270, 38.811832, 46.720604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611492, 38.253731, 47.107365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860764, 38.454659, 47.347141>,  <44.010326, 38.575214, 47.491005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860764, 38.454659, 47.347141>,  <43.611492, 38.253731, 47.107365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860764, 38.454659, 47.347141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496080, -0.338656, 0.799511,
		0.604612, -0.795606, 0.038147,
		0.623177, 0.502317, 0.599440,
		44.047718, 38.605354, 47.526974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670849, 37.811199, 47.764801>,  <43.611492, 38.253731, 47.107365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670849, 37.811199, 47.764801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795963, 38.165520, 47.901928>,  <43.871033, 38.378113, 47.984203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795963, 38.165520, 47.901928>,  <43.670849, 37.811199, 47.764801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795963, 38.165520, 47.901928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476046, -0.166123, 0.863587,
		0.821914, -0.433320, 0.369718,
		0.312791, 0.885797, 0.342819,
		43.889801, 38.431259, 48.004772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980549, 37.757114, 48.470287>,  <43.670849, 37.811199, 47.764801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980549, 37.757114, 48.470287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868526, 38.138931, 48.429451>,  <43.801315, 38.368019, 48.404949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868526, 38.138931, 48.429451>,  <43.980549, 37.757114, 48.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868526, 38.138931, 48.429451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402288, -0.020131, 0.915292,
		0.871627, 0.297402, 0.389638,
		-0.280054, 0.954540, -0.102094,
		43.784512, 38.425293, 48.398823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202854, 38.062546, 49.070995>,  <43.980549, 37.757114, 48.470287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202854, 38.062546, 49.070995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904392, 38.283882, 48.922909>,  <43.725315, 38.416683, 48.834057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904392, 38.283882, 48.922909>,  <44.202854, 38.062546, 49.070995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904392, 38.283882, 48.922909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382082, 0.099475, 0.918759,
		0.545217, 0.826991, 0.137199,
		-0.746158, 0.553345, -0.370214,
		43.680546, 38.449886, 48.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186558, 38.656818, 49.518238>,  <44.202854, 38.062546, 49.070995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186558, 38.656818, 49.518238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826191, 38.612450, 49.350407>,  <43.609970, 38.585831, 49.249706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826191, 38.612450, 49.350407>,  <44.186558, 38.656818, 49.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826191, 38.612450, 49.350407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432337, 0.144944, 0.889987,
		-0.037899, 0.983203, -0.178536,
		-0.900915, -0.110918, -0.419582,
		43.555916, 38.579174, 49.224533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749386, 39.117256, 49.834915>,  <44.186558, 38.656818, 49.518238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749386, 39.117256, 49.834915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489502, 38.867599, 49.661327>,  <43.333572, 38.717808, 49.557175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489502, 38.867599, 49.661327>,  <43.749386, 39.117256, 49.834915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489502, 38.867599, 49.661327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554368, -0.001606, 0.832270,
		-0.520149, 0.781312, -0.344959,
		-0.649709, -0.624138, -0.433970,
		43.294590, 38.680359, 49.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176598, 39.385719, 49.937176>,  <43.749386, 39.117256, 49.834915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176598, 39.385719, 49.937176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054085, 39.011093, 49.869003>,  <42.980576, 38.786320, 49.828102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054085, 39.011093, 49.869003>,  <43.176598, 39.385719, 49.937176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054085, 39.011093, 49.869003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493450, 0.003096, 0.869769,
		-0.814064, 0.350492, -0.463094,
		-0.306281, -0.936560, -0.170429,
		42.962200, 38.730125, 49.817875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513874, 39.378422, 50.122040>,  <43.176598, 39.385719, 49.937176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513874, 39.378422, 50.122040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599228, 38.987892, 50.136215>,  <42.650440, 38.753574, 50.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599228, 38.987892, 50.136215>,  <42.513874, 39.378422, 50.122040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599228, 38.987892, 50.136215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461452, -0.068747, 0.884497,
		-0.861121, -0.205092, -0.465197,
		0.213384, -0.976325, 0.035441,
		42.663242, 38.694996, 50.146847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897545, 38.989761, 50.461895>,  <42.513874, 39.378422, 50.122040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897545, 38.989761, 50.461895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201591, 38.734909, 50.512939>,  <42.384018, 38.581997, 50.543568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201591, 38.734909, 50.512939>,  <41.897545, 38.989761, 50.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201591, 38.734909, 50.512939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395936, -0.298426, 0.868433,
		-0.515225, -0.710636, -0.479103,
		0.760117, -0.637132, 0.127610,
		42.429626, 38.543770, 50.551224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534794, 38.364639, 50.656364>,  <41.897545, 38.989761, 50.461895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534794, 38.364639, 50.656364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913647, 38.333389, 50.780838>,  <42.140957, 38.314640, 50.855522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913647, 38.333389, 50.780838>,  <41.534794, 38.364639, 50.656364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913647, 38.333389, 50.780838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317848, -0.360730, 0.876839,
		0.043750, -0.929393, -0.366491,
		0.947132, -0.078127, 0.311188,
		42.197784, 38.309952, 50.874195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643501, 37.695366, 50.890671>,  <41.534794, 38.364639, 50.656364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643501, 37.695366, 50.890671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928707, 37.914291, 51.065968>,  <42.099831, 38.045647, 51.171146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928707, 37.914291, 51.065968>,  <41.643501, 37.695366, 50.890671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928707, 37.914291, 51.065968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238602, -0.398328, 0.885666,
		0.659301, -0.736059, -0.153425,
		0.713016, 0.547313, 0.438243,
		42.142612, 38.078484, 51.197441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919735, 37.215256, 51.419498>,  <41.643501, 37.695366, 50.890671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919735, 37.215256, 51.419498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043442, 37.581764, 51.521324>,  <42.117664, 37.801670, 51.582420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043442, 37.581764, 51.521324>,  <41.919735, 37.215256, 51.419498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043442, 37.581764, 51.521324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252107, -0.179111, 0.950979,
		0.916949, -0.358285, 0.175605,
		0.309268, 0.916270, 0.254562,
		42.136223, 37.856644, 51.597694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300243, 37.160255, 52.143112>,  <41.919735, 37.215256, 51.419498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300243, 37.160255, 52.143112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190987, 37.542801, 52.101601>,  <42.125431, 37.772327, 52.076694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190987, 37.542801, 52.101601>,  <42.300243, 37.160255, 52.143112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190987, 37.542801, 52.101601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495623, -0.047445, 0.867241,
		0.824471, 0.288313, 0.486953,
		-0.273141, 0.956360, -0.103778,
		42.109043, 37.829708, 52.070469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323303, 37.361023, 52.825275>,  <42.300243, 37.160255, 52.143112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323303, 37.361023, 52.825275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087784, 37.601707, 52.609398>,  <41.946472, 37.746117, 52.479870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087784, 37.601707, 52.609398>,  <42.323303, 37.361023, 52.825275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087784, 37.601707, 52.609398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569025, 0.165636, 0.805466,
		0.574047, 0.781353, 0.244861,
		-0.588796, 0.601708, -0.539692,
		41.911144, 37.782219, 52.447491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255264, 37.908596, 53.245483>,  <42.323303, 37.361023, 52.825275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255264, 37.908596, 53.245483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934181, 37.932236, 53.008110>,  <41.741531, 37.946419, 52.865685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934181, 37.932236, 53.008110>,  <42.255264, 37.908596, 53.245483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934181, 37.932236, 53.008110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527789, 0.392888, 0.753045,
		0.277657, 0.917685, -0.284184,
		-0.802711, 0.059099, -0.593433,
		41.693367, 37.949966, 52.830082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047653, 38.551846, 53.346489>,  <42.255264, 37.908596, 53.245483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047653, 38.551846, 53.346489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732021, 38.361191, 53.191483>,  <41.542641, 38.246799, 53.098476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732021, 38.361191, 53.191483>,  <42.047653, 38.551846, 53.346489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732021, 38.361191, 53.191483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599768, 0.461418, 0.653736,
		-0.132786, 0.748272, -0.649967,
		-0.789079, -0.476636, -0.387520,
		41.495296, 38.218201, 53.075226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504177, 39.016281, 53.457397>,  <42.047653, 38.551846, 53.346489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504177, 39.016281, 53.457397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300316, 38.677917, 53.394539>,  <41.178001, 38.474899, 53.356823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300316, 38.677917, 53.394539>,  <41.504177, 39.016281, 53.457397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300316, 38.677917, 53.394539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674556, 0.279475, 0.683278,
		-0.534070, 0.454240, -0.713047,
		-0.509651, -0.845907, -0.157151,
		41.147419, 38.424145, 53.347393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821659, 39.281414, 53.416374>,  <41.504177, 39.016281, 53.457397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821659, 39.281414, 53.416374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831879, 38.888184, 53.488937>,  <40.838013, 38.652245, 53.532475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831879, 38.888184, 53.488937>,  <40.821659, 39.281414, 53.416374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831879, 38.888184, 53.488937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581078, 0.133054, 0.802898,
		-0.813446, -0.125926, -0.567845,
		0.025552, -0.983077, 0.181405,
		40.839542, 38.593262, 53.543358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176083, 39.041271, 53.686813>,  <40.821659, 39.281414, 53.416374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176083, 39.041271, 53.686813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429420, 38.767326, 53.830948>,  <40.581421, 38.602959, 53.917427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429420, 38.767326, 53.830948>,  <40.176083, 39.041271, 53.686813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429420, 38.767326, 53.830948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468333, 0.031480, 0.882991,
		-0.616072, -0.727991, -0.300806,
		0.633340, -0.684863, 0.360336,
		40.619423, 38.561867, 53.939049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674458, 38.527130, 54.101330>,  <40.176083, 39.041271, 53.686813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674458, 38.527130, 54.101330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040005, 38.435799, 54.235619>,  <40.259335, 38.381001, 54.316193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040005, 38.435799, 54.235619>,  <39.674458, 38.527130, 54.101330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040005, 38.435799, 54.235619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335519, 0.040935, 0.941144,
		-0.228636, -0.972722, -0.039201,
		0.913867, -0.228332, 0.335727,
		40.314163, 38.367298, 54.336338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624222, 38.036587, 54.561302>,  <39.674458, 38.527130, 54.101330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624222, 38.036587, 54.561302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992840, 38.171783, 54.637737>,  <40.214012, 38.252903, 54.683598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992840, 38.171783, 54.637737>,  <39.624222, 38.036587, 54.561302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992840, 38.171783, 54.637737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240487, 0.110502, 0.964342,
		0.304828, -0.934638, 0.183116,
		0.921546, 0.337995, 0.191084,
		40.269302, 38.273182, 54.695061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869858, 37.585358, 54.970802>,  <39.624222, 38.036587, 54.561302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869858, 37.585358, 54.970802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084534, 37.916512, 55.036011>,  <40.213337, 38.115204, 55.075138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084534, 37.916512, 55.036011>,  <39.869858, 37.585358, 54.970802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084534, 37.916512, 55.036011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297862, 0.005118, 0.954595,
		0.789460, -0.560875, 0.249342,
		0.536685, 0.827884, 0.163023,
		40.245541, 38.164875, 55.084919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270554, 37.393147, 55.517658>,  <39.869858, 37.585358, 54.970802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270554, 37.393147, 55.517658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229843, 37.790245, 55.492081>,  <40.205418, 38.028503, 55.476734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229843, 37.790245, 55.492081>,  <40.270554, 37.393147, 55.517658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229843, 37.790245, 55.492081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204007, 0.042081, 0.978065,
		0.973665, 0.112587, 0.198245,
		-0.101775, 0.992750, -0.063941,
		40.199310, 38.088070, 55.472897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667671, 37.589005, 56.115002>,  <40.270554, 37.393147, 55.517658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667671, 37.589005, 56.115002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429470, 37.898407, 56.028221>,  <40.286549, 38.084049, 55.976154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429470, 37.898407, 56.028221>,  <40.667671, 37.589005, 56.115002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429470, 37.898407, 56.028221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289041, 0.045673, 0.956227,
		0.749556, 0.632141, 0.196376,
		-0.595501, 0.773506, -0.216949,
		40.250820, 38.130459, 55.963135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757439, 38.116871, 56.715702>,  <40.667671, 37.589005, 56.115002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757439, 38.116871, 56.715702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429710, 38.241127, 56.522949>,  <40.233074, 38.315681, 56.407295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429710, 38.241127, 56.522949>,  <40.757439, 38.116871, 56.715702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429710, 38.241127, 56.522949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300308, 0.483453, 0.822246,
		0.488388, 0.818400, -0.302818,
		-0.819325, 0.310636, -0.481884,
		40.183914, 38.334316, 56.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738556, 38.864113, 56.778122>,  <40.757439, 38.116871, 56.715702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738556, 38.864113, 56.778122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365387, 38.726654, 56.735119>,  <40.141483, 38.644180, 56.709316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365387, 38.726654, 56.735119>,  <40.738556, 38.864113, 56.778122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365387, 38.726654, 56.735119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261581, 0.441639, 0.858213,
		-0.247442, 0.828771, -0.501908,
		-0.932924, -0.343648, -0.107510,
		40.085510, 38.623558, 56.702866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394875, 39.407040, 57.065189>,  <40.738556, 38.864113, 56.778122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394875, 39.407040, 57.065189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138466, 39.101555, 57.034649>,  <39.984619, 38.918262, 57.016323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138466, 39.101555, 57.034649>,  <40.394875, 39.407040, 57.065189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138466, 39.101555, 57.034649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424308, 0.269725, 0.864414,
		-0.639571, 0.586506, -0.496950,
		-0.641024, -0.763714, -0.076351,
		39.946159, 38.872440, 57.011742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896812, 39.673298, 57.394073>,  <40.394875, 39.407040, 57.065189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896812, 39.673298, 57.394073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785458, 39.289253, 57.383606>,  <39.718643, 39.058826, 57.377327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785458, 39.289253, 57.383606>,  <39.896812, 39.673298, 57.394073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785458, 39.289253, 57.383606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407533, 0.093408, 0.908400,
		-0.869722, 0.263554, -0.417281,
		-0.278390, -0.960111, -0.026168,
		39.701942, 39.001221, 57.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280663, 39.687855, 57.680782>,  <39.896812, 39.673298, 57.394073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280663, 39.687855, 57.680782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373638, 39.301048, 57.722450>,  <39.429424, 39.068966, 57.747452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373638, 39.301048, 57.722450>,  <39.280663, 39.687855, 57.680782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373638, 39.301048, 57.722450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382950, 0.007457, 0.923739,
		-0.894048, -0.254603, -0.368586,
		0.232438, -0.967017, 0.104167,
		39.443371, 39.010944, 57.753700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759827, 39.378849, 58.014214>,  <39.280663, 39.687855, 57.680782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759827, 39.378849, 58.014214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057835, 39.124031, 58.093330>,  <39.236637, 38.971142, 58.140800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057835, 39.124031, 58.093330>,  <38.759827, 39.378849, 58.014214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057835, 39.124031, 58.093330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322194, -0.084040, 0.942936,
		-0.584072, -0.766230, -0.267864,
		0.745017, -0.637047, 0.197789,
		39.281342, 38.932919, 58.152668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478764, 38.897297, 58.328110>,  <38.759827, 39.378849, 58.014214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478764, 38.897297, 58.328110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861382, 38.867149, 58.440777>,  <39.090954, 38.849060, 58.508377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861382, 38.867149, 58.440777>,  <38.478764, 38.897297, 58.328110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861382, 38.867149, 58.440777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279050, 0.043467, 0.959292,
		-0.084548, -0.996208, 0.020546,
		0.956547, -0.075373, 0.281666,
		39.148346, 38.844536, 58.525276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484135, 38.349007, 58.731976>,  <38.478764, 38.897297, 58.328110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484135, 38.349007, 58.731976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798695, 38.570946, 58.840576>,  <38.987431, 38.704109, 58.905739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798695, 38.570946, 58.840576>,  <38.484135, 38.349007, 58.731976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798695, 38.570946, 58.840576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308703, -0.027701, 0.950755,
		0.535048, -0.831489, 0.149500,
		0.786401, 0.554850, 0.271504,
		39.034615, 38.737400, 58.922028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707489, 38.059696, 59.414803>,  <38.484135, 38.349007, 58.731976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707489, 38.059696, 59.414803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849144, 38.426926, 59.343548>,  <38.934135, 38.647263, 59.300793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849144, 38.426926, 59.343548>,  <38.707489, 38.059696, 59.414803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849144, 38.426926, 59.343548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213592, 0.264851, 0.940336,
		0.910477, -0.294956, 0.289886,
		0.354134, 0.918072, -0.178141,
		38.955383, 38.702347, 59.290104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181271, 38.152657, 59.915714>,  <38.707489, 38.059696, 59.414803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181271, 38.152657, 59.915714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995468, 38.499596, 59.844223>,  <38.883987, 38.707760, 59.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995468, 38.499596, 59.844223>,  <39.181271, 38.152657, 59.915714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995468, 38.499596, 59.844223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065611, 0.167566, 0.983675,
		0.883135, 0.468652, -0.020928,
		-0.464508, 0.867345, -0.178732,
		38.856117, 38.759800, 59.790604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525963, 38.637867, 60.277111>,  <39.181271, 38.152657, 59.915714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525963, 38.637867, 60.277111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161140, 38.788422, 60.212021>,  <38.942245, 38.878754, 60.172966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161140, 38.788422, 60.212021>,  <39.525963, 38.637867, 60.277111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161140, 38.788422, 60.212021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096901, 0.187773, 0.977421,
		0.398446, 0.907234, -0.134788,
		-0.912059, 0.376388, -0.162730,
		38.887524, 38.901337, 60.163200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490513, 39.241287, 60.728725>,  <39.525963, 38.637867, 60.277111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490513, 39.241287, 60.728725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127590, 39.088989, 60.657364>,  <38.909836, 38.997612, 60.614548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127590, 39.088989, 60.657364>,  <39.490513, 39.241287, 60.728725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127590, 39.088989, 60.657364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235906, 0.109726, 0.965561,
		-0.348057, 0.918147, -0.189375,
		-0.907306, -0.380745, -0.178406,
		38.855400, 38.974766, 60.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915947, 39.648960, 61.079102>,  <39.490513, 39.241287, 60.728725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915947, 39.648960, 61.079102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815002, 39.263489, 61.044128>,  <38.754436, 39.032207, 61.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815002, 39.263489, 61.044128>,  <38.915947, 39.648960, 61.079102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815002, 39.263489, 61.044128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255677, -0.020738, 0.966540,
		-0.933244, 0.266269, -0.241156,
		-0.252358, -0.963676, -0.087433,
		38.739296, 38.974384, 61.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632904, 39.813488, 61.297844>,  <38.915947, 39.648960, 61.079102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632904, 39.813488, 61.297844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721718, 40.202042, 61.264091>,  <39.775005, 40.435173, 61.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721718, 40.202042, 61.264091>,  <39.632904, 39.813488, 61.297844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721718, 40.202042, 61.264091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698118, -0.218792, -0.681734,
		-0.680684, 0.092463, -0.726718,
		0.222036, 0.971381, -0.084378,
		39.788330, 40.493454, 61.238777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560265, 40.099838, 60.555500>,  <39.632904, 39.813488, 61.297844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560265, 40.099838, 60.555500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818336, 40.318405, 60.769104>,  <39.973179, 40.449547, 60.897266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818336, 40.318405, 60.769104>,  <39.560265, 40.099838, 60.555500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818336, 40.318405, 60.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635345, 0.004505, -0.772215,
		-0.424360, 0.837498, -0.344259,
		0.645178, 0.546421, 0.534012,
		40.011890, 40.482330, 60.929306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903023, 40.562656, 60.106628>,  <39.560265, 40.099838, 60.555500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903023, 40.562656, 60.106628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169991, 40.510918, 60.399971>,  <40.330173, 40.479874, 60.575977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169991, 40.510918, 60.399971>,  <39.903023, 40.562656, 60.106628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169991, 40.510918, 60.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733145, -0.058525, -0.677549,
		0.130561, 0.989870, 0.055771,
		0.667422, -0.129349, 0.733360,
		40.370216, 40.472115, 60.619980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303387, 41.050339, 59.920296>,  <39.903023, 40.562656, 60.106628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303387, 41.050339, 59.920296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463249, 40.757469, 60.140911>,  <40.559166, 40.581745, 60.273281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463249, 40.757469, 60.140911>,  <40.303387, 41.050339, 59.920296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463249, 40.757469, 60.140911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773474, -0.053546, -0.631562,
		0.491948, 0.679005, 0.544921,
		0.399655, -0.732178, 0.551535,
		40.583145, 40.537815, 60.306370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032276, 41.216206, 60.048107>,  <40.303387, 41.050339, 59.920296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032276, 41.216206, 60.048107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937935, 40.827614, 60.038342>,  <40.881329, 40.594460, 60.032482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937935, 40.827614, 60.038342>,  <41.032276, 41.216206, 60.048107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937935, 40.827614, 60.038342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534596, -0.108723, -0.838085,
		0.811530, -0.210717, 0.544993,
		-0.235852, -0.971482, -0.024416,
		40.867180, 40.536171, 60.031017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663635, 40.950478, 59.773186>,  <41.032276, 41.216206, 60.048107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663635, 40.950478, 59.773186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365170, 40.691734, 59.710175>,  <41.186092, 40.536488, 59.672367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365170, 40.691734, 59.710175>,  <41.663635, 40.950478, 59.773186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365170, 40.691734, 59.710175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228721, -0.026852, -0.973122,
		0.625243, -0.762136, 0.167986,
		-0.746162, -0.646859, -0.157527,
		41.141319, 40.497677, 59.662918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961075, 40.280090, 59.443176>,  <41.663635, 40.950478, 59.773186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961075, 40.280090, 59.443176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576660, 40.343178, 59.352375>,  <41.346012, 40.381031, 59.297894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576660, 40.343178, 59.352375>,  <41.961075, 40.280090, 59.443176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576660, 40.343178, 59.352375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222899, -0.043466, -0.973872,
		-0.163463, -0.986527, 0.006617,
		-0.961039, 0.157717, -0.227001,
		41.288349, 40.390491, 59.284275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820473, 39.863163, 58.863663>,  <41.961075, 40.280090, 59.443176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820473, 39.863163, 58.863663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538834, 40.146439, 58.884529>,  <41.369850, 40.316402, 58.897049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538834, 40.146439, 58.884529>,  <41.820473, 39.863163, 58.863663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538834, 40.146439, 58.884529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071884, 0.144174, -0.986938,
		-0.706456, -0.691149, -0.152419,
		-0.704096, 0.708185, 0.052170,
		41.327606, 40.358894, 58.900181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511246, 39.782726, 58.253120>,  <41.820473, 39.863163, 58.863663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511246, 39.782726, 58.253120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400669, 40.142220, 58.389275>,  <41.334324, 40.357914, 58.470966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400669, 40.142220, 58.389275>,  <41.511246, 39.782726, 58.253120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400669, 40.142220, 58.389275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067366, 0.335199, -0.939736,
		-0.958666, -0.282714, -0.032120,
		-0.276443, 0.898729, 0.340389,
		41.317738, 40.411839, 58.491390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953667, 39.921848, 57.831703>,  <41.511246, 39.782726, 58.253120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953667, 39.921848, 57.831703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072044, 40.266235, 57.997189>,  <41.143070, 40.472866, 58.096478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072044, 40.266235, 57.997189>,  <40.953667, 39.921848, 57.831703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072044, 40.266235, 57.997189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057258, 0.448321, -0.892037,
		-0.953487, 0.240305, 0.181975,
		0.295945, 0.860965, 0.413709,
		41.160828, 40.524525, 58.121300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486885, 40.484726, 57.584431>,  <40.953667, 39.921848, 57.831703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486885, 40.484726, 57.584431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818916, 40.676491, 57.698372>,  <41.018135, 40.791550, 57.766735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818916, 40.676491, 57.698372>,  <40.486885, 40.484726, 57.584431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818916, 40.676491, 57.698372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017939, 0.487580, -0.872894,
		-0.557361, 0.729678, 0.396129,
		0.830076, 0.479411, 0.284848,
		41.067940, 40.820312, 57.783825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367527, 41.179604, 57.407410>,  <40.486885, 40.484726, 57.584431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367527, 41.179604, 57.407410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761360, 41.115486, 57.435448>,  <40.997658, 41.077015, 57.452271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761360, 41.115486, 57.435448>,  <40.367527, 41.179604, 57.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761360, 41.115486, 57.435448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143074, 0.507210, -0.849863,
		0.100674, 0.846785, 0.522321,
		0.984578, -0.160290, 0.070090,
		41.056732, 41.067398, 57.456474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720882, 41.849098, 57.326256>,  <40.367527, 41.179604, 57.407410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720882, 41.849098, 57.326256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015144, 41.586838, 57.258217>,  <41.191700, 41.429482, 57.217392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015144, 41.586838, 57.258217>,  <40.720882, 41.849098, 57.326256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015144, 41.586838, 57.258217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266954, 0.511439, -0.816802,
		0.622533, 0.555476, 0.551271,
		0.735656, -0.655650, -0.170101,
		41.235840, 41.390144, 57.207188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250652, 42.293594, 57.234585>,  <40.720882, 41.849098, 57.326256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250652, 42.293594, 57.234585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356438, 41.944420, 57.070618>,  <41.419910, 41.734913, 56.972237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356438, 41.944420, 57.070618>,  <41.250652, 42.293594, 57.234585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356438, 41.944420, 57.070618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514236, 0.487234, -0.705808,
		0.815854, -0.024133, 0.577754,
		0.264468, -0.872938, -0.409921,
		41.435780, 41.682537, 56.947639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893318, 42.447803, 56.940132>,  <41.250652, 42.293594, 57.234585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893318, 42.447803, 56.940132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766205, 42.126755, 56.738220>,  <41.689938, 41.934124, 56.617073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766205, 42.126755, 56.738220>,  <41.893318, 42.447803, 56.940132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766205, 42.126755, 56.738220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506952, 0.306066, -0.805805,
		0.801257, -0.511974, 0.309629,
		-0.317785, -0.802624, -0.504784,
		41.670868, 41.885967, 56.586784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489662, 42.154907, 56.572914>,  <41.893318, 42.447803, 56.940132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489662, 42.154907, 56.572914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190426, 41.983734, 56.370037>,  <42.010883, 41.881031, 56.248310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190426, 41.983734, 56.370037>,  <42.489662, 42.154907, 56.572914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190426, 41.983734, 56.370037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525339, 0.085066, -0.846630,
		0.405446, -0.899798, 0.161173,
		-0.748086, -0.427933, -0.507189,
		41.966000, 41.855354, 56.217880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844551, 41.658909, 56.096237>,  <42.489662, 42.154907, 56.572914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844551, 41.658909, 56.096237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482906, 41.746887, 55.949699>,  <42.265919, 41.799675, 55.861778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482906, 41.746887, 55.949699>,  <42.844551, 41.658909, 56.096237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482906, 41.746887, 55.949699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379034, 0.016993, -0.925227,
		-0.197277, -0.975363, -0.098731,
		-0.904111, 0.219948, -0.366343,
		42.211674, 41.812870, 55.839798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811977, 41.198635, 55.485653>,  <42.844551, 41.658909, 56.096237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811977, 41.198635, 55.485653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534016, 41.482697, 55.440414>,  <42.367241, 41.653133, 55.413269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534016, 41.482697, 55.440414>,  <42.811977, 41.198635, 55.485653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534016, 41.482697, 55.440414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203334, 0.043183, -0.978157,
		-0.689759, -0.702719, -0.174407,
		-0.694901, 0.710156, -0.113101,
		42.325546, 41.695744, 55.406483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396885, 40.997200, 54.976639>,  <42.811977, 41.198635, 55.485653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396885, 40.997200, 54.976639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360115, 41.395477, 54.981586>,  <42.338051, 41.634441, 54.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360115, 41.395477, 54.981586>,  <42.396885, 40.997200, 54.976639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360115, 41.395477, 54.981586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244399, 0.034600, -0.969057,
		-0.965308, -0.086060, -0.246526,
		-0.091927, 0.995689, 0.012367,
		42.332539, 41.694183, 54.985298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927891, 41.081844, 54.335930>,  <42.396885, 40.997200, 54.976639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927891, 41.081844, 54.335930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062973, 41.450508, 54.412354>,  <42.144024, 41.671707, 54.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062973, 41.450508, 54.412354>,  <41.927891, 41.081844, 54.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062973, 41.450508, 54.412354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061909, 0.180794, -0.981571,
		-0.939213, 0.343311, 0.003997,
		0.337706, 0.921657, 0.191058,
		42.164284, 41.727005, 54.469669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584232, 41.564560, 53.905994>,  <41.927891, 41.081844, 54.335930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584232, 41.564560, 53.905994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905403, 41.785385, 53.995918>,  <42.098106, 41.917881, 54.049873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905403, 41.785385, 53.995918>,  <41.584232, 41.564560, 53.905994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905403, 41.785385, 53.995918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068211, 0.289572, -0.954723,
		-0.592165, 0.781905, 0.194848,
		0.802924, 0.552063, 0.224809,
		42.146282, 41.951004, 54.063362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537975, 42.206692, 53.391857>,  <41.584232, 41.564560, 53.905994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537975, 42.206692, 53.391857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905235, 42.160484, 53.543465>,  <42.125591, 42.132759, 53.634430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905235, 42.160484, 53.543465>,  <41.537975, 42.206692, 53.391857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905235, 42.160484, 53.543465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382928, 0.012935, -0.923688,
		0.101799, 0.993221, 0.056112,
		0.918152, -0.115517, 0.379016,
		42.180679, 42.125828, 53.657169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894249, 42.638634, 53.060883>,  <41.537975, 42.206692, 53.391857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894249, 42.638634, 53.060883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172470, 42.392021, 53.208450>,  <42.339401, 42.244053, 53.296989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172470, 42.392021, 53.208450>,  <41.894249, 42.638634, 53.060883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172470, 42.392021, 53.208450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416114, -0.072916, -0.906384,
		0.585713, 0.783948, 0.205830,
		0.695550, -0.616529, 0.368920,
		42.381134, 42.207062, 53.319126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525452, 42.995731, 53.010181>,  <41.894249, 42.638634, 53.060883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525452, 42.995731, 53.010181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616463, 42.606384, 53.021385>,  <42.671070, 42.372776, 53.028107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616463, 42.606384, 53.021385>,  <42.525452, 42.995731, 53.010181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616463, 42.606384, 53.021385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600063, 0.117491, -0.791278,
		0.766914, 0.196845, 0.610815,
		0.227525, -0.973369, 0.028013,
		42.684719, 42.314373, 53.029789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128803, 43.028179, 52.764973>,  <42.525452, 42.995731, 53.010181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128803, 43.028179, 52.764973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036903, 42.639473, 52.743492>,  <42.981762, 42.406250, 52.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036903, 42.639473, 52.743492>,  <43.128803, 43.028179, 52.764973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036903, 42.639473, 52.743492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603416, -0.098935, -0.791265,
		0.763611, -0.214202, 0.609110,
		-0.229753, -0.971766, -0.053705,
		42.967976, 42.347942, 52.727379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755020, 42.782185, 52.598167>,  <43.128803, 43.028179, 52.764973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755020, 42.782185, 52.598167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506760, 42.474007, 52.539921>,  <43.357803, 42.289101, 52.504974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506760, 42.474007, 52.539921>,  <43.755020, 42.782185, 52.598167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506760, 42.474007, 52.539921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541973, -0.287333, -0.789750,
		0.566622, -0.569078, 0.595895,
		-0.620649, -0.770448, -0.145616,
		43.320564, 42.242870, 52.496235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072334, 42.174419, 52.588547>,  <43.755020, 42.782185, 52.598167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072334, 42.174419, 52.588547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751801, 42.135803, 52.352394>,  <43.559479, 42.112633, 52.210705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751801, 42.135803, 52.352394>,  <44.072334, 42.174419, 52.588547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751801, 42.135803, 52.352394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598202, -0.136506, -0.789633,
		-0.004362, -0.985924, 0.167135,
		-0.801333, -0.096536, -0.590378,
		43.511402, 42.106842, 52.175282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182030, 41.548538, 52.169083>,  <44.072334, 42.174419, 52.588547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182030, 41.548538, 52.169083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916447, 41.772530, 51.970856>,  <43.757095, 41.906925, 51.851921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916447, 41.772530, 51.970856>,  <44.182030, 41.548538, 52.169083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916447, 41.772530, 51.970856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504919, -0.153092, -0.849482,
		-0.551557, -0.814241, -0.181096,
		-0.663959, 0.559977, -0.495565,
		43.717258, 41.940521, 51.822186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040939, 41.119995, 51.596077>,  <44.182030, 41.548538, 52.169083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040939, 41.119995, 51.596077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940521, 41.496475, 51.505638>,  <43.880268, 41.722363, 51.451374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940521, 41.496475, 51.505638>,  <44.040939, 41.119995, 51.596077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940521, 41.496475, 51.505638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546396, -0.055020, -0.835718,
		-0.799016, -0.333346, -0.500454,
		-0.251048, 0.941198, -0.226101,
		43.865208, 41.778835, 51.437809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738976, 41.109730, 50.842182>,  <44.040939, 41.119995, 51.596077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738976, 41.109730, 50.842182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852989, 41.485268, 50.919464>,  <43.921398, 41.710590, 50.965832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852989, 41.485268, 50.919464>,  <43.738976, 41.109730, 50.842182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852989, 41.485268, 50.919464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485821, 0.032251, -0.873463,
		-0.826277, 0.342828, -0.446917,
		0.285035, 0.938844, 0.193201,
		43.938499, 41.766922, 50.977425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555111, 41.475677, 50.317223>,  <43.738976, 41.109730, 50.842182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555111, 41.475677, 50.317223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802597, 41.751259, 50.468231>,  <43.951088, 41.916607, 50.558838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802597, 41.751259, 50.468231>,  <43.555111, 41.475677, 50.317223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802597, 41.751259, 50.468231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410150, 0.126579, -0.903192,
		-0.670047, 0.713663, -0.204259,
		0.618720, 0.688958, 0.377523,
		43.988213, 41.957947, 50.581490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655590, 41.897999, 49.791485>,  <43.555111, 41.475677, 50.317223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655590, 41.897999, 49.791485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967377, 42.002151, 50.019394>,  <44.154449, 42.064644, 50.156139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967377, 42.002151, 50.019394>,  <43.655590, 41.897999, 49.791485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967377, 42.002151, 50.019394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570892, 0.079212, -0.817195,
		-0.257913, 0.962251, -0.086906,
		0.779463, 0.260379, 0.569771,
		44.201218, 42.080265, 50.190327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829208, 42.553112, 49.599442>,  <43.655590, 41.897999, 49.791485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829208, 42.553112, 49.599442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146271, 42.391983, 49.782494>,  <44.336510, 42.295303, 49.892326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146271, 42.391983, 49.782494>,  <43.829208, 42.553112, 49.599442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146271, 42.391983, 49.782494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558423, 0.178490, -0.810127,
		0.244658, 0.897704, 0.366429,
		0.792658, -0.402826, 0.457629,
		44.384068, 42.271133, 49.919781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326706, 43.110035, 49.559490>,  <43.829208, 42.553112, 49.599442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326706, 43.110035, 49.559490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477310, 42.740585, 49.588226>,  <44.567673, 42.518917, 49.605469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477310, 42.740585, 49.588226>,  <44.326706, 43.110035, 49.559490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477310, 42.740585, 49.588226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566623, 0.168239, -0.806619,
		0.732924, 0.344410, 0.586689,
		0.376512, -0.923622, 0.071844,
		44.590263, 42.463497, 49.609779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995243, 43.243889, 49.422699>,  <44.326706, 43.110035, 49.559490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995243, 43.243889, 49.422699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957855, 42.847565, 49.383610>,  <44.935421, 42.609768, 49.360157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957855, 42.847565, 49.383610>,  <44.995243, 43.243889, 49.422699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957855, 42.847565, 49.383610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804224, -0.017273, -0.594076,
		0.586931, -0.134121, 0.798451,
		-0.093469, -0.990814, -0.097725,
		44.929813, 42.550320, 49.354294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574825, 43.043400, 49.212780>,  <44.995243, 43.243889, 49.422699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574825, 43.043400, 49.212780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377243, 42.708893, 49.117565>,  <45.258694, 42.508190, 49.060436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377243, 42.708893, 49.117565>,  <45.574825, 43.043400, 49.212780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377243, 42.708893, 49.117565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717816, -0.237723, -0.654392,
		0.490657, -0.494113, 0.717710,
		-0.493960, -0.836265, -0.238042,
		45.229053, 42.458012, 49.046154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.122314, 42.536522, 49.219997>,  <45.574825, 43.043400, 49.212780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.122314, 42.536522, 49.219997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828911, 42.387543, 48.992577>,  <45.652870, 42.298157, 48.856125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828911, 42.387543, 48.992577>,  <46.122314, 42.536522, 49.219997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828911, 42.387543, 48.992577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678067, -0.343387, -0.649854,
		0.046803, -0.862188, 0.504421,
		-0.733508, -0.372447, -0.568550,
		45.608860, 42.275810, 48.822010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268501, 41.797630, 49.092983>,  <46.122314, 42.536522, 49.219997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268501, 41.797630, 49.092983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034004, 41.926994, 48.795868>,  <45.893307, 42.004612, 48.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034004, 41.926994, 48.795868>,  <46.268501, 41.797630, 49.092983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034004, 41.926994, 48.795868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572832, -0.482870, -0.662344,
		-0.572876, -0.813784, 0.097820,
		-0.586239, 0.323407, -0.742786,
		45.858131, 42.024017, 48.573032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239262, 41.287605, 48.667042>,  <46.268501, 41.797630, 49.092983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239262, 41.287605, 48.667042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121536, 41.585808, 48.427841>,  <46.050903, 41.764729, 48.284321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121536, 41.585808, 48.427841>,  <46.239262, 41.287605, 48.667042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121536, 41.585808, 48.427841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730199, -0.228284, -0.643969,
		-0.616597, -0.626183, -0.477183,
		-0.294309, 0.745507, -0.597998,
		46.033245, 41.809460, 48.248444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218658, 40.999191, 48.021294>,  <46.239262, 41.287605, 48.667042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218658, 40.999191, 48.021294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256142, 41.390297, 47.946262>,  <46.278633, 41.624962, 47.901241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256142, 41.390297, 47.946262>,  <46.218658, 40.999191, 48.021294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256142, 41.390297, 47.946262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681736, -0.200329, -0.703637,
		-0.725572, -0.061942, -0.685353,
		0.093711, 0.977769, -0.187581,
		46.284256, 41.683628, 47.889988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450317, 40.953819, 47.434757>,  <46.218658, 40.999191, 48.021294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450317, 40.953819, 47.434757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520973, 41.336319, 47.528042>,  <46.563366, 41.565819, 47.584011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520973, 41.336319, 47.528042>,  <46.450317, 40.953819, 47.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520973, 41.336319, 47.528042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767979, 0.014296, -0.640315,
		-0.615634, 0.292208, -0.731853,
		0.176642, 0.956248, 0.233211,
		46.573967, 41.623192, 47.598003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441936, 41.311508, 46.765079>,  <46.450317, 40.953819, 47.434757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441936, 41.311508, 46.765079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632500, 41.515228, 47.051758>,  <46.746838, 41.637459, 47.223763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632500, 41.515228, 47.051758>,  <46.441936, 41.311508, 46.765079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632500, 41.515228, 47.051758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800961, 0.084789, -0.592682,
		-0.362618, 0.856404, -0.367532,
		0.476413, 0.509296, 0.716693,
		46.775425, 41.668018, 47.266766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755653, 41.971539, 46.381882>,  <46.441936, 41.311508, 46.765079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755653, 41.971539, 46.381882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979729, 41.957970, 46.712952>,  <47.114174, 41.949829, 46.911594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979729, 41.957970, 46.712952>,  <46.755653, 41.971539, 46.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979729, 41.957970, 46.712952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827935, -0.009383, -0.560746,
		0.026789, 0.999380, 0.022831,
		0.560184, -0.033924, 0.827673,
		47.147785, 41.947792, 46.961254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309772, 42.591400, 46.513371>,  <46.755653, 41.971539, 46.381882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309772, 42.591400, 46.513371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.422569, 42.247116, 46.682915>,  <47.490246, 42.040546, 46.784641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.422569, 42.247116, 46.682915>,  <47.309772, 42.591400, 46.513371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.422569, 42.247116, 46.682915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755586, -0.073021, -0.650967,
		0.591246, 0.503826, 0.629752,
		0.281989, -0.860713, 0.423857,
		47.507164, 41.988903, 46.810070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.953644, 42.683598, 46.543404>,  <47.309772, 42.591400, 46.513371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.953644, 42.683598, 46.543404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.896400, 42.290039, 46.586235>,  <47.862053, 42.053905, 46.611935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.896400, 42.290039, 46.586235>,  <47.953644, 42.683598, 46.543404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.896400, 42.290039, 46.586235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714506, -0.177577, -0.676718,
		0.684836, -0.020335, 0.728413,
		-0.143110, -0.983897, 0.107081,
		47.853466, 41.994869, 46.618359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.821484, 43.405594, 46.409298>,  <47.953644, 42.683598, 46.543404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.821484, 43.405594, 46.409298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888382, 43.798340, 46.445011>,  <47.928520, 44.033989, 46.466438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888382, 43.798340, 46.445011>,  <47.821484, 43.405594, 46.409298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.888382, 43.798340, 46.445011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541116, 0.015711, 0.840801,
		0.824149, -0.188934, 0.533930,
		0.167244, 0.981864, 0.089287,
		47.938557, 44.092899, 46.471798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.018806, 43.479462, 47.060501>,  <47.821484, 43.405594, 46.409298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.018806, 43.479462, 47.060501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918663, 43.857643, 46.977127>,  <47.858578, 44.084553, 46.927101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918663, 43.857643, 46.977127>,  <48.018806, 43.479462, 47.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.918663, 43.857643, 46.977127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548057, 0.039073, 0.835528,
		0.798093, 0.323418, 0.508378,
		-0.250361, 0.945449, -0.208435,
		47.843555, 44.141277, 46.914597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.187046, 43.715965, 47.741241>,  <48.018806, 43.479462, 47.060501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.187046, 43.715965, 47.741241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.950478, 43.967293, 47.539078>,  <47.808537, 44.118088, 47.417782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.950478, 43.967293, 47.539078>,  <48.187046, 43.715965, 47.741241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.950478, 43.967293, 47.539078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595240, 0.082644, 0.799287,
		0.543974, 0.773555, 0.325122,
		-0.591423, 0.628317, -0.505407,
		47.773052, 44.155788, 47.387455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.179981, 44.353100, 48.094646>,  <48.187046, 43.715965, 47.741241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.179981, 44.353100, 48.094646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829727, 44.314072, 47.905445>,  <47.619576, 44.290653, 47.791924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829727, 44.314072, 47.905445>,  <48.179981, 44.353100, 48.094646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829727, 44.314072, 47.905445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479655, 0.290148, 0.828097,
		0.056441, 0.951994, -0.300867,
		-0.875640, -0.097574, -0.473005,
		47.567036, 44.284798, 47.763542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724152, 44.882938, 48.380959>,  <48.179981, 44.353100, 48.094646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724152, 44.882938, 48.380959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.449760, 44.660637, 48.193100>,  <47.285126, 44.527256, 48.080383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.449760, 44.660637, 48.193100>,  <47.724152, 44.882938, 48.380959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.449760, 44.660637, 48.193100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640554, 0.155080, 0.752091,
		-0.345146, 0.816753, -0.462373,
		-0.685977, -0.555756, -0.469649,
		47.243969, 44.493912, 48.052204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152405, 45.300285, 48.239914>,  <47.724152, 44.882938, 48.380959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152405, 45.300285, 48.239914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014229, 44.924980, 48.247204>,  <46.931324, 44.699799, 48.251579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014229, 44.924980, 48.247204>,  <47.152405, 45.300285, 48.239914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014229, 44.924980, 48.247204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655523, 0.255152, 0.710765,
		-0.671534, 0.233584, -0.703193,
		-0.345445, -0.938262, 0.018224,
		46.910595, 44.643501, 48.252670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450146, 45.438148, 48.213440>,  <47.152405, 45.300285, 48.239914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450146, 45.438148, 48.213440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517067, 45.064980, 48.340981>,  <46.557220, 44.841080, 48.417507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517067, 45.064980, 48.340981>,  <46.450146, 45.438148, 48.213440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517067, 45.064980, 48.340981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733702, 0.098215, 0.672335,
		-0.658552, -0.346427, -0.668055,
		0.167302, -0.932921, 0.318854,
		46.567257, 44.785103, 48.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764259, 45.108101, 48.166801>,  <46.450146, 45.438148, 48.213440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764259, 45.108101, 48.166801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978981, 44.894341, 48.427956>,  <46.107815, 44.766083, 48.584648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978981, 44.894341, 48.427956>,  <45.764259, 45.108101, 48.166801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978981, 44.894341, 48.427956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777721, -0.013410, 0.628467,
		-0.327098, -0.845125, -0.422813,
		0.536803, -0.534401, 0.652885,
		46.140022, 44.734020, 48.623821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292980, 44.640835, 48.525730>,  <45.764259, 45.108101, 48.166801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292980, 44.640835, 48.525730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610474, 44.679871, 48.765884>,  <45.800972, 44.703293, 48.909977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610474, 44.679871, 48.765884>,  <45.292980, 44.640835, 48.525730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610474, 44.679871, 48.765884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595488, -0.076538, 0.799710,
		0.123997, -0.992279, -0.002636,
		0.793737, 0.097592, 0.600381,
		45.848595, 44.709148, 48.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231823, 44.156754, 49.019070>,  <45.292980, 44.640835, 48.525730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231823, 44.156754, 49.019070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494164, 44.398865, 49.199516>,  <45.651566, 44.544132, 49.307785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494164, 44.398865, 49.199516>,  <45.231823, 44.156754, 49.019070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494164, 44.398865, 49.199516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476756, -0.131222, 0.869186,
		0.585292, -0.785127, 0.202506,
		0.655848, 0.605274, 0.451118,
		45.690918, 44.580448, 49.334850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452251, 43.818211, 49.682045>,  <45.231823, 44.156754, 49.019070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452251, 43.818211, 49.682045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503395, 44.212646, 49.724514>,  <45.534081, 44.449310, 49.749996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503395, 44.212646, 49.724514>,  <45.452251, 43.818211, 49.682045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503395, 44.212646, 49.724514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267877, -0.068735, 0.960998,
		0.954932, -0.151312, 0.255363,
		0.127858, 0.986093, 0.106170,
		45.541752, 44.508476, 49.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841324, 43.829247, 50.315189>,  <45.452251, 43.818211, 49.682045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841324, 43.829247, 50.315189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703957, 44.201721, 50.266281>,  <45.621536, 44.425205, 50.236938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703957, 44.201721, 50.266281>,  <45.841324, 43.829247, 50.315189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703957, 44.201721, 50.266281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089638, 0.097091, 0.991231,
		0.934895, 0.351366, 0.050127,
		-0.343418, 0.931190, -0.122266,
		45.600933, 44.481079, 50.229603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326374, 44.301014, 50.660328>,  <45.841324, 43.829247, 50.315189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326374, 44.301014, 50.660328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962799, 44.466476, 50.639450>,  <45.744656, 44.565754, 50.626923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962799, 44.466476, 50.639450>,  <46.326374, 44.301014, 50.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962799, 44.466476, 50.639450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082426, -0.055571, 0.995047,
		0.408707, 0.908736, 0.084606,
		-0.908936, 0.413657, -0.052192,
		45.690117, 44.590572, 50.623791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323402, 44.722332, 51.236694>,  <46.326374, 44.301014, 50.660328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323402, 44.722332, 51.236694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936081, 44.713211, 51.137199>,  <45.703690, 44.707741, 51.077503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936081, 44.713211, 51.137199>,  <46.323402, 44.722332, 51.236694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936081, 44.713211, 51.137199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244265, -0.121587, 0.962056,
		-0.052177, 0.992319, 0.112164,
		-0.968304, -0.022800, -0.248733,
		45.645592, 44.706371, 51.062580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967640, 45.218090, 51.593826>,  <46.323402, 44.722332, 51.236694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967640, 45.218090, 51.593826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680099, 44.953964, 51.506889>,  <45.507576, 44.795490, 51.454727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680099, 44.953964, 51.506889>,  <45.967640, 45.218090, 51.593826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680099, 44.953964, 51.506889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394517, 0.130082, 0.909634,
		-0.572373, 0.739637, -0.354015,
		-0.718850, -0.660315, -0.217344,
		45.464443, 44.755871, 51.441685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430901, 45.485783, 52.005684>,  <45.967640, 45.218090, 51.593826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430901, 45.485783, 52.005684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300701, 45.122093, 51.901875>,  <45.222580, 44.903877, 51.839588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300701, 45.122093, 51.901875>,  <45.430901, 45.485783, 52.005684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300701, 45.122093, 51.901875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382367, -0.124457, 0.915590,
		-0.864780, 0.397261, -0.307148,
		-0.325502, -0.909227, -0.259528,
		45.203053, 44.849323, 51.824017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750504, 45.508839, 52.117268>,  <45.430901, 45.485783, 52.005684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750504, 45.508839, 52.117268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851906, 45.121979, 52.109722>,  <44.912746, 44.889862, 52.105194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851906, 45.121979, 52.109722>,  <44.750504, 45.508839, 52.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851906, 45.121979, 52.109722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602212, -0.173048, 0.779355,
		-0.757018, -0.186209, -0.626298,
		0.253502, -0.967151, -0.018863,
		44.927956, 44.831833, 52.104065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047337, 45.205421, 52.206295>,  <44.750504, 45.508839, 52.117268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047337, 45.205421, 52.206295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318466, 44.931763, 52.313995>,  <44.481144, 44.767567, 52.378616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318466, 44.931763, 52.313995>,  <44.047337, 45.205421, 52.206295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318466, 44.931763, 52.313995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645891, -0.379134, 0.662633,
		-0.351255, -0.623057, -0.698870,
		0.677823, -0.684147, 0.269254,
		44.521812, 44.726521, 52.394772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731575, 44.593510, 52.247158>,  <44.047337, 45.205421, 52.206295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731575, 44.593510, 52.247158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042946, 44.538147, 52.492073>,  <44.229771, 44.504929, 52.639023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042946, 44.538147, 52.492073>,  <43.731575, 44.593510, 52.247158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042946, 44.538147, 52.492073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626277, -0.237616, 0.742506,
		0.042724, -0.961448, -0.271646,
		0.778429, -0.138403, 0.612285,
		44.276474, 44.496624, 52.675758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723064, 43.940964, 52.569321>,  <43.731575, 44.593510, 52.247158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723064, 43.940964, 52.569321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973953, 44.139046, 52.809776>,  <44.124485, 44.257896, 52.954048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973953, 44.139046, 52.809776>,  <43.723064, 43.940964, 52.569321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973953, 44.139046, 52.809776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490521, -0.348357, 0.798772,
		0.604969, -0.795875, 0.024414,
		0.627217, 0.495208, 0.601138,
		44.162117, 44.287609, 52.990116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660797, 43.514210, 53.171734>,  <43.723064, 43.940964, 52.569321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660797, 43.514210, 53.171734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819954, 43.863220, 53.285133>,  <43.915447, 44.072628, 53.353172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819954, 43.863220, 53.285133>,  <43.660797, 43.514210, 53.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819954, 43.863220, 53.285133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436067, -0.092010, 0.895198,
		0.807170, -0.479822, 0.343870,
		0.397896, 0.872528, 0.283502,
		43.939323, 44.124977, 53.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936855, 43.394428, 53.866226>,  <43.660797, 43.514210, 53.171734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936855, 43.394428, 53.866226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875214, 43.784500, 53.802628>,  <43.838230, 44.018543, 53.764469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875214, 43.784500, 53.802628>,  <43.936855, 43.394428, 53.866226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875214, 43.784500, 53.802628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656978, 0.019060, 0.753669,
		0.737992, 0.220595, 0.637734,
		-0.154100, 0.975179, -0.158992,
		43.828983, 44.077053, 53.754929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913834, 43.628204, 54.548641>,  <43.936855, 43.394428, 53.866226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913834, 43.628204, 54.548641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746582, 43.924385, 54.338154>,  <43.646233, 44.102093, 54.211861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746582, 43.924385, 54.338154>,  <43.913834, 43.628204, 54.548641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746582, 43.924385, 54.338154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745626, 0.051124, 0.664401,
		0.518856, 0.670167, 0.530720,
		-0.418127, 0.740447, -0.526220,
		43.621143, 44.146519, 54.180286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806728, 44.256447, 55.010597>,  <43.913834, 43.628204, 54.548641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806728, 44.256447, 55.010597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534054, 44.279839, 54.718876>,  <43.370449, 44.293873, 54.543842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534054, 44.279839, 54.718876>,  <43.806728, 44.256447, 55.010597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534054, 44.279839, 54.718876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728586, 0.036782, 0.683966,
		0.066823, 0.997611, 0.017533,
		-0.681687, 0.058479, -0.729303,
		43.329548, 44.297382, 54.500084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376667, 44.888664, 55.185848>,  <43.806728, 44.256447, 55.010597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376667, 44.888664, 55.185848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136833, 44.681999, 54.941372>,  <42.992931, 44.557999, 54.794685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136833, 44.681999, 54.941372>,  <43.376667, 44.888664, 55.185848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136833, 44.681999, 54.941372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742475, 0.074070, 0.665766,
		-0.298708, 0.852977, -0.428024,
		-0.599586, -0.516667, -0.611189,
		42.956959, 44.527000, 54.758015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719860, 45.268463, 55.148937>,  <43.376667, 44.888664, 55.185848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719860, 45.268463, 55.148937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615170, 44.901947, 55.027672>,  <42.552353, 44.682037, 54.954914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615170, 44.901947, 55.027672>,  <42.719860, 45.268463, 55.148937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615170, 44.901947, 55.027672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902092, 0.120582, 0.414354,
		-0.343112, 0.381932, -0.858139,
		-0.261731, -0.916290, -0.303165,
		42.536652, 44.627060, 54.936722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060440, 45.332600, 54.811508>,  <42.719860, 45.268463, 55.148937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060440, 45.332600, 54.811508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142525, 44.968300, 54.954857>,  <42.191776, 44.749722, 55.040867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142525, 44.968300, 54.954857>,  <42.060440, 45.332600, 54.811508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142525, 44.968300, 54.954857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823910, 0.036876, 0.565519,
		-0.528260, -0.411316, -0.742806,
		0.205216, -0.910747, 0.358368,
		42.204090, 44.695076, 55.062366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472546, 45.022755, 54.729439>,  <42.060440, 45.332600, 54.811508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472546, 45.022755, 54.729439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667450, 44.805847, 55.003231>,  <41.784393, 44.675701, 55.167507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667450, 44.805847, 55.003231>,  <41.472546, 45.022755, 54.729439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667450, 44.805847, 55.003231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850134, -0.115382, 0.513769,
		-0.199626, -0.832242, -0.517226,
		0.487259, -0.542273, 0.684484,
		41.813629, 44.643166, 55.208576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911098, 44.624996, 54.906300>,  <41.472546, 45.022755, 54.729439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911098, 44.624996, 54.906300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183853, 44.569168, 55.193504>,  <41.347507, 44.535671, 55.365829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183853, 44.569168, 55.193504>,  <40.911098, 44.624996, 54.906300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183853, 44.569168, 55.193504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730883, -0.091151, 0.676389,
		-0.028957, -0.986008, -0.164165,
		0.681888, -0.139571, 0.718017,
		41.388420, 44.527294, 55.408909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951351, 43.851147, 55.095940>,  <40.911098, 44.624996, 54.906300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951351, 43.851147, 55.095940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064007, 44.083214, 55.401642>,  <41.131599, 44.222454, 55.585064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064007, 44.083214, 55.401642>,  <40.951351, 43.851147, 55.095940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064007, 44.083214, 55.401642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769071, -0.339796, 0.541358,
		0.573768, -0.740235, 0.350489,
		0.281638, 0.580165, 0.764257,
		41.148499, 44.257263, 55.630920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819786, 43.466743, 55.681820>,  <40.951351, 43.851147, 55.095940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819786, 43.466743, 55.681820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855835, 43.836166, 55.830906>,  <40.877464, 44.057819, 55.920357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855835, 43.836166, 55.830906>,  <40.819786, 43.466743, 55.681820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855835, 43.836166, 55.830906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752046, -0.182233, 0.633418,
		0.652920, -0.337382, 0.678136,
		0.090125, 0.923561, 0.372710,
		40.882874, 44.113235, 55.942719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801254, 43.352474, 56.430660>,  <40.819786, 43.466743, 55.681820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801254, 43.352474, 56.430660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719894, 43.741737, 56.387589>,  <40.671078, 43.975296, 56.361744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719894, 43.741737, 56.387589>,  <40.801254, 43.352474, 56.430660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719894, 43.741737, 56.387589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669024, -0.057844, 0.740987,
		0.714868, 0.222756, 0.662830,
		-0.203400, 0.973157, -0.107679,
		40.658875, 44.033684, 56.355286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678974, 43.651314, 57.098740>,  <40.801254, 43.352474, 56.430660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678974, 43.651314, 57.098740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507271, 43.912552, 56.849194>,  <40.404251, 44.069294, 56.699467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507271, 43.912552, 56.849194>,  <40.678974, 43.651314, 57.098740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507271, 43.912552, 56.849194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675519, 0.226346, 0.701742,
		0.599513, 0.722659, 0.344017,
		-0.429254, 0.653094, -0.623867,
		40.378494, 44.108479, 56.662033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569893, 44.300240, 57.472759>,  <40.678974, 43.651314, 57.098740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569893, 44.300240, 57.472759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316513, 44.261208, 57.165718>,  <40.164486, 44.237789, 56.981491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316513, 44.261208, 57.165718>,  <40.569893, 44.300240, 57.472759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316513, 44.261208, 57.165718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769049, 0.188984, 0.610614,
		0.085479, 0.977120, -0.194759,
		-0.633449, -0.097584, -0.767607,
		40.126480, 44.231934, 56.935436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978161, 44.608627, 57.711155>,  <40.569893, 44.300240, 57.472759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978161, 44.608627, 57.711155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830940, 44.481598, 57.361599>,  <39.742607, 44.405380, 57.151863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830940, 44.481598, 57.361599>,  <39.978161, 44.608627, 57.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830940, 44.481598, 57.361599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929460, 0.100012, 0.355107,
		-0.025371, 0.942946, -0.331977,
		-0.368049, -0.317569, -0.873894,
		39.720524, 44.386326, 57.099430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477551, 45.020866, 57.443981>,  <39.978161, 44.608627, 57.711155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477551, 45.020866, 57.443981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391304, 44.667099, 57.278419>,  <39.339558, 44.454838, 57.179081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391304, 44.667099, 57.278419>,  <39.477551, 45.020866, 57.443981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391304, 44.667099, 57.278419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943081, 0.078699, 0.323118,
		-0.253197, 0.460013, -0.851046,
		-0.215615, -0.884418, -0.413903,
		39.326618, 44.401775, 57.154247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851562, 45.162346, 57.236023>,  <39.477551, 45.020866, 57.443981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851562, 45.162346, 57.236023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880653, 44.763870, 57.255287>,  <38.898109, 44.524784, 57.266846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880653, 44.763870, 57.255287>,  <38.851562, 45.162346, 57.236023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880653, 44.763870, 57.255287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908170, -0.046188, 0.416045,
		-0.412234, -0.073998, -0.908068,
		0.072728, -0.996188, 0.048162,
		38.902473, 44.465015, 57.269737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264809, 44.982677, 57.008663>,  <38.851562, 45.162346, 57.236023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264809, 44.982677, 57.008663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414486, 44.683479, 57.227928>,  <38.504292, 44.503960, 57.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414486, 44.683479, 57.227928>,  <38.264809, 44.982677, 57.008663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414486, 44.683479, 57.227928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907713, -0.174431, 0.381617,
		-0.189837, -0.640360, -0.744245,
		0.374192, -0.748006, 0.548149,
		38.526745, 44.459080, 57.392376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050713, 44.824024, 57.695713>,  <38.264809, 44.982677, 57.008663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050713, 44.824024, 57.695713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686501, 44.807930, 57.531124>,  <37.467972, 44.798275, 57.432369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686501, 44.807930, 57.531124>,  <38.050713, 44.824024, 57.695713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686501, 44.807930, 57.531124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409049, -0.232307, -0.882447,
		-0.060084, -0.971810, 0.227981,
		-0.910532, -0.040235, -0.411476,
		37.413342, 44.795860, 57.407681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090302, 44.288162, 57.137680>,  <38.050713, 44.824024, 57.695713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090302, 44.288162, 57.137680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775398, 44.515022, 57.040886>,  <37.586456, 44.651138, 56.982807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775398, 44.515022, 57.040886>,  <38.090302, 44.288162, 57.137680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775398, 44.515022, 57.040886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361539, 0.106646, -0.926238,
		-0.499513, -0.816677, -0.289007,
		-0.787259, 0.567155, -0.241989,
		37.539219, 44.685169, 56.968288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981030, 44.082481, 56.435791>,  <38.090302, 44.288162, 57.137680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981030, 44.082481, 56.435791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788063, 44.429756, 56.482307>,  <37.672283, 44.638123, 56.510216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788063, 44.429756, 56.482307>,  <37.981030, 44.082481, 56.435791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788063, 44.429756, 56.482307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301340, 0.289147, -0.908619,
		-0.822477, -0.403289, -0.401109,
		-0.482416, 0.868189, 0.116289,
		37.643337, 44.690212, 56.517193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549438, 44.148399, 55.851753>,  <37.981030, 44.082481, 56.435791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549438, 44.148399, 55.851753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641052, 44.508186, 56.000618>,  <37.696022, 44.724060, 56.089935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641052, 44.508186, 56.000618>,  <37.549438, 44.148399, 55.851753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641052, 44.508186, 56.000618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390949, 0.265134, -0.881398,
		-0.891460, 0.347367, -0.290921,
		0.229035, 0.899467, 0.372159,
		37.709763, 44.778027, 56.112267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282715, 44.560341, 55.338848>,  <37.549438, 44.148399, 55.851753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282715, 44.560341, 55.338848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548805, 44.779297, 55.541962>,  <37.708458, 44.910671, 55.663830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548805, 44.779297, 55.541962>,  <37.282715, 44.560341, 55.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548805, 44.779297, 55.541962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326860, 0.397960, -0.857199,
		-0.671296, 0.736205, 0.085814,
		0.665225, 0.547386, 0.507784,
		37.748371, 44.943512, 55.694298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198315, 45.222847, 55.057522>,  <37.282715, 44.560341, 55.338848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198315, 45.222847, 55.057522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557831, 45.209602, 55.232368>,  <37.773540, 45.201656, 55.337276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557831, 45.209602, 55.232368>,  <37.198315, 45.222847, 55.057522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557831, 45.209602, 55.232368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415990, 0.378966, -0.826642,
		-0.138285, 0.924818, 0.354385,
		0.898793, -0.033108, 0.437121,
		37.827469, 45.199669, 55.363506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565029, 45.943607, 54.847958>,  <37.198315, 45.222847, 55.057522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565029, 45.943607, 54.847958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842407, 45.689362, 54.983681>,  <38.008835, 45.536816, 55.065117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842407, 45.689362, 54.983681>,  <37.565029, 45.943607, 54.847958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842407, 45.689362, 54.983681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562465, 0.183237, -0.806262,
		0.450294, 0.749950, 0.484573,
		0.693447, -0.635610, 0.339310,
		38.050442, 45.498680, 55.085472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209728, 46.201839, 54.781292>,  <37.565029, 45.943607, 54.847958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209728, 46.201839, 54.781292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308540, 45.814369, 54.791405>,  <38.367828, 45.581886, 54.797474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308540, 45.814369, 54.791405>,  <38.209728, 46.201839, 54.781292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308540, 45.814369, 54.791405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564035, 0.122524, -0.816610,
		0.787934, 0.215987, 0.576636,
		0.247029, -0.968678, 0.025283,
		38.382648, 45.523766, 54.798988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788155, 46.174301, 54.415752>,  <38.209728, 46.201839, 54.781292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788155, 46.174301, 54.415752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698689, 45.785225, 54.390919>,  <38.645008, 45.551781, 54.376019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698689, 45.785225, 54.390919>,  <38.788155, 46.174301, 54.415752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698689, 45.785225, 54.390919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557460, -0.075413, -0.826771,
		0.799508, -0.219526, 0.559102,
		-0.223662, -0.972688, -0.062083,
		38.631592, 45.493420, 54.372295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445538, 45.815483, 54.647240>,  <38.788155, 46.174301, 54.415752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445538, 45.815483, 54.647240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223724, 45.598007, 54.395245>,  <39.090637, 45.467522, 54.244049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223724, 45.598007, 54.395245>,  <39.445538, 45.815483, 54.647240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223724, 45.598007, 54.395245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757984, -0.017576, -0.652036,
		0.343436, -0.839099, 0.421858,
		-0.554537, -0.543694, -0.629988,
		39.057362, 45.434898, 54.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888329, 45.415920, 54.334408>,  <39.445538, 45.815483, 54.647240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888329, 45.415920, 54.334408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566166, 45.353378, 54.105713>,  <39.372868, 45.315853, 53.968498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566166, 45.353378, 54.105713>,  <39.888329, 45.415920, 54.334408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566166, 45.353378, 54.105713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592581, -0.190939, -0.782554,
		0.013190, -0.969069, 0.246435,
		-0.805403, -0.156354, -0.571733,
		39.324547, 45.306473, 53.934193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171700, 44.840824, 53.924957>,  <39.888329, 45.415920, 54.334408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171700, 44.840824, 53.924957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877052, 45.022171, 53.724220>,  <39.700264, 45.130981, 53.603779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877052, 45.022171, 53.724220>,  <40.171700, 44.840824, 53.924957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877052, 45.022171, 53.724220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523621, -0.087321, -0.847465,
		-0.428037, -0.887035, -0.173072,
		-0.736618, 0.453370, -0.501847,
		39.656067, 45.158180, 53.573666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152725, 44.433998, 53.393124>,  <40.171700, 44.840824, 53.924957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152725, 44.433998, 53.393124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943810, 44.758522, 53.288059>,  <39.818459, 44.953236, 53.225021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943810, 44.758522, 53.288059>,  <40.152725, 44.433998, 53.393124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943810, 44.758522, 53.288059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442974, -0.005076, -0.896520,
		-0.728691, -0.584592, -0.356739,
		-0.522288, 0.811312, -0.262658,
		39.787125, 45.001915, 53.209263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889534, 44.271126, 52.816002>,  <40.152725, 44.433998, 53.393124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889534, 44.271126, 52.816002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898781, 44.670135, 52.842545>,  <39.904327, 44.909542, 52.858471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898781, 44.670135, 52.842545>,  <39.889534, 44.271126, 52.816002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898781, 44.670135, 52.842545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525087, 0.044365, -0.849891,
		-0.850735, 0.054485, -0.522763,
		0.023114, 0.997528, 0.066352,
		39.905716, 44.969395, 52.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737583, 44.574535, 52.106812>,  <39.889534, 44.271126, 52.816002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737583, 44.574535, 52.106812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936249, 44.854683, 52.311871>,  <40.055447, 45.022770, 52.434906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936249, 44.854683, 52.311871>,  <39.737583, 44.574535, 52.106812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936249, 44.854683, 52.311871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640540, 0.102797, -0.761013,
		-0.585690, 0.706339, -0.397559,
		0.496665, 0.700370, 0.512645,
		40.085247, 45.064793, 52.465664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898270, 45.091431, 51.559120>,  <39.737583, 44.574535, 52.106812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898270, 45.091431, 51.559120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153473, 45.128662, 51.864876>,  <40.306595, 45.151001, 52.048328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153473, 45.128662, 51.864876>,  <39.898270, 45.091431, 51.559120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153473, 45.128662, 51.864876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743624, 0.183257, -0.642993,
		-0.199926, 0.978649, 0.047705,
		0.638007, 0.093076, 0.764385,
		40.344875, 45.156586, 52.094193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264935, 45.745163, 51.472599>,  <39.898270, 45.091431, 51.559120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264935, 45.745163, 51.472599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507721, 45.528992, 51.705677>,  <40.653393, 45.399288, 51.845524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507721, 45.528992, 51.705677>,  <40.264935, 45.745163, 51.472599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507721, 45.528992, 51.705677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783517, 0.284201, -0.552568,
		0.133021, 0.791940, 0.595934,
		0.606966, -0.540427, 0.582693,
		40.689812, 45.366863, 51.880486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917492, 46.126732, 51.430309>,  <40.264935, 45.745163, 51.472599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917492, 46.126732, 51.430309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024216, 45.773293, 51.584229>,  <41.088249, 45.561230, 51.676579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024216, 45.773293, 51.584229>,  <40.917492, 46.126732, 51.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024216, 45.773293, 51.584229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839485, 0.016970, -0.543118,
		0.473368, 0.467940, 0.746294,
		0.266811, -0.883597, 0.384795,
		41.104259, 45.508213, 51.699669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601524, 46.241863, 51.575886>,  <40.917492, 46.126732, 51.430309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601524, 46.241863, 51.575886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587379, 45.842461, 51.559235>,  <41.578892, 45.602818, 51.549244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587379, 45.842461, 51.559235>,  <41.601524, 46.241863, 51.575886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587379, 45.842461, 51.559235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863570, -0.009566, -0.504137,
		0.502987, -0.053781, 0.862619,
		-0.035365, -0.998507, -0.041632,
		41.576771, 45.542908, 51.546745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198708, 45.986492, 51.842228>,  <41.601524, 46.241863, 51.575886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198708, 45.986492, 51.842228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071640, 45.673927, 51.627384>,  <41.995399, 45.486389, 51.498478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071640, 45.673927, 51.627384>,  <42.198708, 45.986492, 51.842228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071640, 45.673927, 51.627384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859949, 0.001215, -0.510379,
		0.399467, -0.624017, 0.671586,
		-0.317669, -0.781409, -0.537109,
		41.976337, 45.439503, 51.466251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681099, 45.460178, 51.865417>,  <42.198708, 45.986492, 51.842228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681099, 45.460178, 51.865417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475456, 45.389603, 51.529663>,  <42.352070, 45.347256, 51.328213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475456, 45.389603, 51.529663>,  <42.681099, 45.460178, 51.865417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475456, 45.389603, 51.529663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855575, -0.036211, -0.516410,
		0.060720, -0.983645, 0.169574,
		-0.514105, -0.176440, -0.839384,
		42.321224, 45.336670, 51.277847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202232, 45.071426, 51.483513>,  <42.681099, 45.460178, 51.865417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202232, 45.071426, 51.483513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934067, 45.131981, 51.192963>,  <42.773167, 45.168312, 51.018631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934067, 45.131981, 51.192963>,  <43.202232, 45.071426, 51.483513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934067, 45.131981, 51.192963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726019, -0.068151, -0.684289,
		-0.153092, -0.986123, -0.064217,
		-0.670417, 0.151382, -0.726378,
		42.732941, 45.177395, 50.975048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325176, 44.672165, 50.891659>,  <43.202232, 45.071426, 51.483513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325176, 44.672165, 50.891659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089241, 44.956017, 50.737511>,  <42.947681, 45.126328, 50.645020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089241, 44.956017, 50.737511>,  <43.325176, 44.672165, 50.891659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089241, 44.956017, 50.737511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630376, 0.106366, -0.768968,
		-0.504695, -0.696496, -0.510074,
		-0.589838, 0.709633, -0.385372,
		42.912289, 45.168907, 50.621899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191338, 44.508770, 50.161572>,  <43.325176, 44.672165, 50.891659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191338, 44.508770, 50.161572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152725, 44.903526, 50.213310>,  <43.129559, 45.140381, 50.244354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152725, 44.903526, 50.213310>,  <43.191338, 44.508770, 50.161572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152725, 44.903526, 50.213310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443044, 0.158977, -0.882291,
		-0.891287, -0.027863, -0.452582,
		-0.096534, 0.986889, 0.129349,
		43.123764, 45.199593, 50.252113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898254, 44.745159, 49.499905>,  <43.191338, 44.508770, 50.161572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898254, 44.745159, 49.499905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050621, 45.069641, 49.677376>,  <43.142040, 45.264332, 49.783859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050621, 45.069641, 49.677376>,  <42.898254, 44.745159, 49.499905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050621, 45.069641, 49.677376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429804, 0.269504, -0.861764,
		-0.818641, 0.518950, -0.246003,
		0.380914, 0.811208, 0.443673,
		43.164894, 45.313004, 49.810478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802731, 45.339314, 48.997280>,  <42.898254, 44.745159, 49.499905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802731, 45.339314, 48.997280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076942, 45.466026, 49.259483>,  <43.241470, 45.542053, 49.416805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076942, 45.466026, 49.259483>,  <42.802731, 45.339314, 48.997280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076942, 45.466026, 49.259483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503576, 0.443929, -0.741174,
		-0.525790, 0.838198, 0.144804,
		0.685534, 0.316781, 0.655510,
		43.282604, 45.561062, 49.456135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731918, 46.086811, 48.992760>,  <42.802731, 45.339314, 48.997280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731918, 46.086811, 48.992760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089600, 45.958237, 49.117393>,  <43.304207, 45.881092, 49.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089600, 45.958237, 49.117393>,  <42.731918, 46.086811, 48.992760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089600, 45.958237, 49.117393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437059, 0.476200, -0.763029,
		0.096886, 0.818482, 0.566304,
		0.894199, -0.321435, 0.311588,
		43.357861, 45.861805, 49.210869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145027, 46.717644, 48.882305>,  <42.731918, 46.086811, 48.992760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145027, 46.717644, 48.882305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399155, 46.410469, 48.914913>,  <43.551632, 46.226166, 48.934479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399155, 46.410469, 48.914913>,  <43.145027, 46.717644, 48.882305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399155, 46.410469, 48.914913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502480, 0.330910, -0.798757,
		0.586416, 0.548429, 0.596105,
		0.635318, -0.767935, 0.081524,
		43.589748, 46.180088, 48.939369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845222, 47.040279, 48.858040>,  <43.145027, 46.717644, 48.882305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845222, 47.040279, 48.858040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871483, 46.651276, 48.768669>,  <43.887241, 46.417873, 48.715046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871483, 46.651276, 48.768669>,  <43.845222, 47.040279, 48.858040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871483, 46.651276, 48.768669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633802, 0.213584, -0.743423,
		0.770704, -0.092801, 0.630399,
		0.065653, -0.972507, -0.223428,
		43.891178, 46.359524, 48.701641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586426, 46.848549, 48.800495>,  <43.845222, 47.040279, 48.858040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586426, 46.848549, 48.800495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384293, 46.571030, 48.595253>,  <44.263012, 46.404518, 48.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384293, 46.571030, 48.595253>,  <44.586426, 46.848549, 48.800495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384293, 46.571030, 48.595253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658445, 0.074309, -0.748951,
		0.557752, -0.716323, 0.419279,
		-0.505335, -0.693801, -0.513105,
		44.232693, 46.362888, 48.441322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056526, 46.375801, 48.569546>,  <44.586426, 46.848549, 48.800495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056526, 46.375801, 48.569546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731781, 46.349396, 48.337505>,  <44.536934, 46.333553, 48.198280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.731781, 46.349396, 48.337505>,  <45.056526, 46.375801, 48.569546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731781, 46.349396, 48.337505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582478, -0.023514, -0.812506,
		0.039998, -0.997542, 0.057543,
		-0.811862, -0.066016, -0.580105,
		44.488224, 46.329594, 48.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307098, 45.892757, 48.112175>,  <45.056526, 46.375801, 48.569546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307098, 45.892757, 48.112175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986980, 46.074814, 47.956032>,  <44.794910, 46.184048, 47.862347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986980, 46.074814, 47.956032>,  <45.307098, 45.892757, 48.112175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986980, 46.074814, 47.956032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352674, -0.169209, -0.920320,
		-0.484929, -0.874193, -0.025101,
		-0.800291, 0.455142, -0.390359,
		44.746895, 46.211357, 47.838924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095074, 45.476433, 47.583183>,  <45.307098, 45.892757, 48.112175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095074, 45.476433, 47.583183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936680, 45.832787, 47.494175>,  <44.841644, 46.046600, 47.440769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936680, 45.832787, 47.494175>,  <45.095074, 45.476433, 47.583183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936680, 45.832787, 47.494175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345455, -0.079996, -0.935019,
		-0.850798, -0.447124, -0.276085,
		-0.395984, 0.890888, -0.222522,
		44.817886, 46.100052, 47.427418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676422, 45.384445, 46.945602>,  <45.095074, 45.476433, 47.583183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676422, 45.384445, 46.945602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751534, 45.776520, 46.970848>,  <44.796600, 46.011765, 46.985996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751534, 45.776520, 46.970848>,  <44.676422, 45.384445, 46.945602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751534, 45.776520, 46.970848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463097, -0.031685, -0.885741,
		-0.866187, 0.195550, -0.459869,
		0.187778, 0.980182, 0.063114,
		44.807865, 46.070576, 46.989780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424088, 45.631615, 46.314217>,  <44.676422, 45.384445, 46.945602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424088, 45.631615, 46.314217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700581, 45.875946, 46.468662>,  <44.866478, 46.022545, 46.561329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700581, 45.875946, 46.468662>,  <44.424088, 45.631615, 46.314217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700581, 45.875946, 46.468662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509423, -0.032932, -0.859886,
		-0.512528, 0.791077, -0.333934,
		0.691233, 0.610829, 0.386114,
		44.907951, 46.059196, 46.584496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572544, 46.062824, 45.772308>,  <44.424088, 45.631615, 46.314217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572544, 46.062824, 45.772308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880150, 46.129456, 46.019169>,  <45.064713, 46.169434, 46.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880150, 46.129456, 46.019169>,  <44.572544, 46.062824, 45.772308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880150, 46.129456, 46.019169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617876, 0.053799, -0.784432,
		-0.163868, 0.984560, -0.061550,
		0.769010, 0.166574, 0.617153,
		45.110851, 46.179428, 46.204315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006439, 46.628265, 45.436417>,  <44.572544, 46.062824, 45.772308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006439, 46.628265, 45.436417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253761, 46.464302, 45.704647>,  <45.402157, 46.365925, 45.865585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253761, 46.464302, 45.704647>,  <45.006439, 46.628265, 45.436417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253761, 46.464302, 45.704647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678430, -0.152373, -0.718690,
		0.396773, 0.899310, 0.183880,
		0.618307, -0.409907, 0.670577,
		45.439255, 46.341331, 45.905819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575420, 46.967930, 45.340244>,  <45.006439, 46.628265, 45.436417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575420, 46.967930, 45.340244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663536, 46.605362, 45.484398>,  <45.716408, 46.387821, 45.570889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663536, 46.605362, 45.484398>,  <45.575420, 46.967930, 45.340244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663536, 46.605362, 45.484398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556281, -0.186746, -0.809739,
		0.801263, 0.378853, 0.463086,
		0.220293, -0.906420, 0.360381,
		45.729626, 46.333435, 45.592514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311913, 46.933830, 45.203636>,  <45.575420, 46.967930, 45.340244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311913, 46.933830, 45.203636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217094, 46.554611, 45.288506>,  <46.160202, 46.327080, 45.339428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217094, 46.554611, 45.288506>,  <46.311913, 46.933830, 45.203636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217094, 46.554611, 45.288506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521281, -0.308418, -0.795704,
		0.819802, -0.078018, 0.567308,
		-0.237047, -0.948046, 0.212173,
		46.145981, 46.270199, 45.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565929, 47.158661, 45.839859>,  <46.311913, 46.933830, 45.203636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565929, 47.158661, 45.839859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186714, 47.282585, 45.810898>,  <45.959187, 47.356941, 45.793522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186714, 47.282585, 45.810898>,  <46.565929, 47.158661, 45.839859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186714, 47.282585, 45.810898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303465, -0.812158, 0.498305,
		0.095582, 0.494383, 0.863973,
		-0.948036, 0.309814, -0.072400,
		45.902302, 47.375530, 45.789177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.055695, 40.069477, 51.405918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140667, 39.678741, 51.416237>,  <39.191650, 39.444302, 51.422428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140667, 39.678741, 51.416237>,  <39.055695, 40.069477, 51.405918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140667, 39.678741, 51.416237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544317, 0.096360, -0.833327,
		0.811538, 0.191064, 0.552178,
		0.212427, -0.976836, 0.025800,
		39.204395, 39.385689, 51.423977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815865, 40.017448, 51.208473>,  <39.055695, 40.069477, 51.405918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815865, 40.017448, 51.208473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684052, 39.640930, 51.179157>,  <39.604965, 39.415020, 51.161568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684052, 39.640930, 51.179157>,  <39.815865, 40.017448, 51.208473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684052, 39.640930, 51.179157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534931, -0.122178, -0.836015,
		0.777985, -0.314694, 0.543790,
		-0.329528, -0.941297, -0.073287,
		39.585194, 39.358540, 51.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424763, 39.640854, 51.101467>,  <39.815865, 40.017448, 51.208473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424763, 39.640854, 51.101467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.125454, 39.415382, 50.961544>,  <39.945869, 39.280102, 50.877590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.125454, 39.415382, 50.961544>,  <40.424763, 39.640854, 51.101467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125454, 39.415382, 50.961544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573487, -0.284559, -0.768205,
		0.333479, -0.775432, 0.536188,
		-0.748268, -0.563677, -0.349805,
		39.900974, 39.246281, 50.856602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758762, 38.979382, 50.879047>,  <40.424763, 39.640854, 51.101467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758762, 38.979382, 50.879047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.418301, 39.023422, 50.673752>,  <40.214024, 39.049847, 50.550575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.418301, 39.023422, 50.673752>,  <40.758762, 38.979382, 50.879047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418301, 39.023422, 50.673752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475678, -0.251655, -0.842852,
		-0.221959, -0.961533, 0.161824,
		-0.851155, 0.110103, -0.513237,
		40.162952, 39.056454, 50.519779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817131, 38.443638, 50.338375>,  <40.758762, 38.979382, 50.879047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817131, 38.443638, 50.338375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.521446, 38.680542, 50.210129>,  <40.344036, 38.822685, 50.133183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.521446, 38.680542, 50.210129>,  <40.817131, 38.443638, 50.338375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521446, 38.680542, 50.210129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453072, 0.085096, -0.887403,
		-0.498292, -0.801239, -0.331241,
		-0.739210, 0.592262, -0.320616,
		40.299683, 38.858219, 50.113945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775173, 38.192207, 49.727482>,  <40.817131, 38.443638, 50.338375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775173, 38.192207, 49.727482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638462, 38.567764, 49.711094>,  <40.556435, 38.793098, 49.701263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638462, 38.567764, 49.711094>,  <40.775173, 38.192207, 49.727482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638462, 38.567764, 49.711094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406550, 0.108409, -0.907174,
		-0.847293, -0.326707, -0.418756,
		-0.341777, 0.938888, -0.040968,
		40.535931, 38.849430, 49.698803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505501, 38.243607, 49.058537>,  <40.775173, 38.192207, 49.727482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505501, 38.243607, 49.058537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570778, 38.620392, 49.175888>,  <40.609943, 38.846462, 49.246300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570778, 38.620392, 49.175888>,  <40.505501, 38.243607, 49.058537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570778, 38.620392, 49.175888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166942, 0.266708, -0.949209,
		-0.972367, 0.203883, -0.113728,
		0.163196, 0.941965, 0.293374,
		40.619736, 38.902981, 49.263901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080677, 38.710102, 48.686886>,  <40.505501, 38.243607, 49.058537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080677, 38.710102, 48.686886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.399498, 38.918846, 48.808449>,  <40.590790, 39.044094, 48.881386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.399498, 38.918846, 48.808449>,  <40.080677, 38.710102, 48.686886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399498, 38.918846, 48.808449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184874, 0.268215, -0.945453,
		-0.574910, 0.809764, 0.117304,
		0.797057, 0.521864, 0.303904,
		40.638615, 39.075405, 48.899620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279312, 38.910397, 48.099091>,  <40.080677, 38.710102, 48.686886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279312, 38.910397, 48.099091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.572670, 39.065773, 48.322247>,  <40.748684, 39.159000, 48.456139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.572670, 39.065773, 48.322247>,  <40.279312, 38.910397, 48.099091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572670, 39.065773, 48.322247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489560, 0.267601, -0.829892,
		-0.471660, 0.881760, 0.006089,
		0.733395, 0.388446, 0.557891,
		40.792690, 39.182308, 48.489613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423222, 39.514622, 47.785942>,  <40.279312, 38.910397, 48.099091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423222, 39.514622, 47.785942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764919, 39.459641, 47.986492>,  <40.969936, 39.426651, 48.106823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764919, 39.459641, 47.986492>,  <40.423222, 39.514622, 47.785942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764919, 39.459641, 47.986492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519601, 0.256881, -0.814878,
		-0.016788, 0.956619, 0.290858,
		0.854244, -0.137450, 0.501373,
		41.021191, 39.418404, 48.136906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787128, 40.253708, 47.764893>,  <40.423222, 39.514622, 47.785942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787128, 40.253708, 47.764893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.072044, 39.977425, 47.814796>,  <41.242992, 39.811653, 47.844738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.072044, 39.977425, 47.814796>,  <40.787128, 40.253708, 47.764893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072044, 39.977425, 47.814796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533392, 0.417146, -0.735855,
		0.456220, 0.590685, 0.665548,
		0.712289, -0.690710, 0.124757,
		41.285732, 39.770210, 47.852222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423962, 40.566486, 48.005939>,  <40.787128, 40.253708, 47.764893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423962, 40.566486, 48.005939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.539986, 40.233139, 47.817741>,  <41.609600, 40.033131, 47.704823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.539986, 40.233139, 47.817741>,  <41.423962, 40.566486, 48.005939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539986, 40.233139, 47.817741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541782, 0.548251, -0.637097,
		0.788885, -0.070110, 0.610528,
		0.290056, -0.833370, -0.470492,
		41.627003, 39.983128, 47.676594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087257, 40.760262, 47.839561>,  <41.423962, 40.566486, 48.005939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087257, 40.760262, 47.839561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009274, 40.449242, 47.600430>,  <41.962482, 40.262630, 47.456951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009274, 40.449242, 47.600430>,  <42.087257, 40.760262, 47.839561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009274, 40.449242, 47.600430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714913, 0.304638, -0.629360,
		0.671483, -0.550096, 0.496492,
		-0.194958, -0.777554, -0.597831,
		41.950787, 40.215977, 47.421082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708199, 40.493046, 47.592957>,  <42.087257, 40.760262, 47.839561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708199, 40.493046, 47.592957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.428715, 40.356201, 47.341637>,  <42.261024, 40.274094, 47.190845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.428715, 40.356201, 47.341637>,  <42.708199, 40.493046, 47.592957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428715, 40.356201, 47.341637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503921, 0.388042, -0.771678,
		0.507813, -0.855791, -0.098727,
		-0.698706, -0.342118, -0.628304,
		42.219101, 40.253567, 47.153145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092754, 40.241238, 47.026295>,  <42.708199, 40.493046, 47.592957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092754, 40.241238, 47.026295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.726929, 40.257668, 46.865353>,  <42.507435, 40.267525, 46.768787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.726929, 40.257668, 46.865353>,  <43.092754, 40.241238, 47.026295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726929, 40.257668, 46.865353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384812, 0.394540, -0.834421,
		0.124471, -0.917960, -0.376638,
		-0.914564, 0.041074, -0.402351,
		42.452560, 40.269989, 46.744648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084080, 40.004204, 46.402893>,  <43.092754, 40.241238, 47.026295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084080, 40.004204, 46.402893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.750732, 40.225189, 46.396072>,  <42.550724, 40.357780, 46.391979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.750732, 40.225189, 46.396072>,  <43.084080, 40.004204, 46.402893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750732, 40.225189, 46.396072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291668, 0.413350, -0.862595,
		-0.469505, -0.723828, -0.505607,
		-0.833363, 0.552462, -0.017048,
		42.500725, 40.390926, 46.390957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839527, 40.026306, 45.738163>,  <43.084080, 40.004204, 46.402893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839527, 40.026306, 45.738163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.675076, 40.341225, 45.921963>,  <42.576405, 40.530174, 46.032242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.675076, 40.341225, 45.921963>,  <42.839527, 40.026306, 45.738163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675076, 40.341225, 45.921963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425950, 0.611572, -0.666743,
		-0.805940, -0.078396, -0.586784,
		-0.411131, 0.787295, 0.459498,
		42.551735, 40.577412, 46.059811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523365, 40.367130, 45.241768>,  <42.839527, 40.026306, 45.738163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523365, 40.367130, 45.241768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.531670, 40.672386, 45.500126>,  <42.536652, 40.855541, 45.655140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.531670, 40.672386, 45.500126>,  <42.523365, 40.367130, 45.241768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531670, 40.672386, 45.500126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396438, 0.586796, -0.706051,
		-0.917827, 0.270715, -0.290357,
		0.020758, 0.763141, 0.645899,
		42.537895, 40.901329, 45.693897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236847, 40.977627, 44.926197>,  <42.523365, 40.367130, 45.241768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236847, 40.977627, 44.926197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.481724, 41.103195, 45.216484>,  <42.628651, 41.178535, 45.390656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.481724, 41.103195, 45.216484>,  <42.236847, 40.977627, 44.926197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481724, 41.103195, 45.216484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521470, 0.529634, -0.668997,
		-0.594381, 0.787997, 0.160536,
		0.612194, 0.313924, 0.725721,
		42.665382, 41.197372, 45.434200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246033, 41.703362, 44.822258>,  <42.236847, 40.977627, 44.926197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246033, 41.703362, 44.822258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.561501, 41.592163, 45.041611>,  <42.750782, 41.525444, 45.173222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.561501, 41.592163, 45.041611>,  <42.246033, 41.703362, 44.822258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561501, 41.592163, 45.041611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601796, 0.531637, -0.595989,
		-0.125859, 0.800052, 0.586581,
		0.788670, -0.277992, 0.548379,
		42.798103, 41.508766, 45.206123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626656, 42.260567, 44.953640>,  <42.246033, 41.703362, 44.822258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626656, 42.260567, 44.953640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.905571, 41.977043, 44.996300>,  <43.072922, 41.806927, 45.021896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.905571, 41.977043, 44.996300>,  <42.626656, 42.260567, 44.953640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905571, 41.977043, 44.996300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546072, 0.428920, -0.719606,
		0.464322, 0.560010, 0.686144,
		0.697287, -0.708813, 0.106649,
		43.114758, 41.764400, 45.028294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403679, 42.571041, 45.165302>,  <42.626656, 42.260567, 44.953640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403679, 42.571041, 45.165302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.389286, 42.236588, 44.946369>,  <43.380650, 42.035915, 44.815010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.389286, 42.236588, 44.946369>,  <43.403679, 42.571041, 45.165302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389286, 42.236588, 44.946369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644726, 0.399046, -0.651990,
		0.763567, -0.376344, 0.524720,
		-0.035985, -0.836138, -0.547337,
		43.378490, 41.985744, 44.782169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040028, 42.902855, 45.179680>,  <43.403679, 42.571041, 45.165302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040028, 42.902855, 45.179680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.949951, 43.279114, 45.078117>,  <43.895905, 43.504871, 45.017181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.949951, 43.279114, 45.078117>,  <44.040028, 42.902855, 45.179680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949951, 43.279114, 45.078117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309081, 0.178168, 0.934197,
		0.923991, 0.288848, 0.250615,
		-0.225189, 0.940650, -0.253903,
		43.882393, 43.561310, 45.001945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290470, 43.336662, 45.741692>,  <44.040028, 42.902855, 45.179680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290470, 43.336662, 45.741692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.026009, 43.565186, 45.547173>,  <43.867332, 43.702301, 45.430462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.026009, 43.565186, 45.547173>,  <44.290470, 43.336662, 45.741692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026009, 43.565186, 45.547173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363241, 0.323392, 0.873770,
		0.656457, 0.754337, -0.006288,
		-0.661151, 0.571308, -0.486299,
		43.827663, 43.736580, 45.401283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328430, 43.942501, 46.108761>,  <44.290470, 43.336662, 45.741692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328430, 43.942501, 46.108761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.987663, 43.979607, 45.902603>,  <43.783203, 44.001869, 45.778908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.987663, 43.979607, 45.902603>,  <44.328430, 43.942501, 46.108761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987663, 43.979607, 45.902603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448918, 0.377410, 0.809959,
		0.269654, 0.921388, -0.279876,
		-0.851915, 0.092768, -0.515398,
		43.732090, 44.007439, 45.747982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997150, 44.576706, 46.258541>,  <44.328430, 43.942501, 46.108761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997150, 44.576706, 46.258541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.690254, 44.363525, 46.115818>,  <43.506119, 44.235619, 46.030182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.690254, 44.363525, 46.115818>,  <43.997150, 44.576706, 46.258541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690254, 44.363525, 46.115818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514017, 0.178230, 0.839059,
		-0.383582, 0.827163, -0.410689,
		-0.767236, -0.532950, -0.356810,
		43.460083, 44.203640, 46.008774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344471, 44.941010, 46.483952>,  <43.997150, 44.576706, 46.258541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344471, 44.941010, 46.483952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.225864, 44.572891, 46.381866>,  <43.154701, 44.352020, 46.320618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.225864, 44.572891, 46.381866>,  <43.344471, 44.941010, 46.483952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225864, 44.572891, 46.381866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648733, -0.002018, 0.761014,
		-0.700873, 0.391218, -0.596428,
		-0.296518, -0.920296, -0.255210,
		43.136909, 44.296803, 46.305302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595337, 44.942371, 46.430901>,  <43.344471, 44.941010, 46.483952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595337, 44.942371, 46.430901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.697235, 44.567017, 46.524319>,  <42.758373, 44.341805, 46.580368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.697235, 44.567017, 46.524319>,  <42.595337, 44.942371, 46.430901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697235, 44.567017, 46.524319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594151, 0.038662, 0.803424,
		-0.762949, -0.343428, -0.547692,
		0.254744, -0.938383, 0.233545,
		42.773659, 44.285503, 46.594383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941921, 44.502335, 46.552963>,  <42.595337, 44.942371, 46.430901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941921, 44.502335, 46.552963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.214325, 44.271950, 46.733845>,  <42.377766, 44.133717, 46.842373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.214325, 44.271950, 46.733845>,  <41.941921, 44.502335, 46.552963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214325, 44.271950, 46.733845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682959, -0.276773, 0.675990,
		-0.264178, -0.769203, -0.581839,
		0.681012, -0.575954, 0.452217,
		42.418629, 44.099159, 46.869507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625313, 43.793758, 46.805733>,  <41.941921, 44.502335, 46.552963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625313, 43.793758, 46.805733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.967110, 43.811241, 47.012783>,  <42.172188, 43.821732, 47.137012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.967110, 43.811241, 47.012783>,  <41.625313, 43.793758, 46.805733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967110, 43.811241, 47.012783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477761, -0.325079, 0.816130,
		0.203939, -0.944677, -0.256895,
		0.854490, 0.043707, 0.517626,
		42.223457, 43.824352, 47.168072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790298, 43.142166, 47.117069>,  <41.625313, 43.793758, 46.805733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790298, 43.142166, 47.117069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.958565, 43.425995, 47.343185>,  <42.059525, 43.596291, 47.478855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.958565, 43.425995, 47.343185>,  <41.790298, 43.142166, 47.117069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958565, 43.425995, 47.343185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424853, -0.396472, 0.813824,
		0.801588, -0.582509, 0.134683,
		0.420662, 0.709572, 0.565288,
		42.084763, 43.638866, 47.512772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832073, 42.665092, 47.677185>,  <41.790298, 43.142166, 47.117069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832073, 42.665092, 47.677185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.938431, 43.023697, 47.818924>,  <42.002247, 43.238861, 47.903969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.938431, 43.023697, 47.818924>,  <41.832073, 42.665092, 47.677185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938431, 43.023697, 47.818924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342284, -0.255828, 0.904098,
		0.901189, -0.361682, 0.238839,
		0.265894, 0.896514, 0.354348,
		42.018200, 43.292652, 47.925228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234955, 42.581139, 48.222801>,  <41.832073, 42.665092, 47.677185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234955, 42.581139, 48.222801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.081932, 42.948166, 48.266087>,  <41.990120, 43.168385, 48.292057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.081932, 42.948166, 48.266087>,  <42.234955, 42.581139, 48.222801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081932, 42.948166, 48.266087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476765, -0.296374, 0.827561,
		0.791420, 0.264996, 0.550846,
		-0.382557, 0.917573, 0.108215,
		41.967167, 43.223438, 48.298550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403404, 42.730797, 48.891563>,  <42.234955, 42.581139, 48.222801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403404, 42.730797, 48.891563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.098808, 42.958260, 48.767139>,  <41.916050, 43.094738, 48.692486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.098808, 42.958260, 48.767139>,  <42.403404, 42.730797, 48.891563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098808, 42.958260, 48.767139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503034, -0.215843, 0.836880,
		0.408758, 0.793752, 0.450417,
		-0.761494, 0.568656, -0.311057,
		41.870361, 43.128857, 48.673820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111980, 42.828514, 49.529785>,  <42.403404, 42.730797, 48.891563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111980, 42.828514, 49.529785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.836216, 42.934586, 49.260151>,  <41.670757, 42.998230, 49.098370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.836216, 42.934586, 49.260151>,  <42.111980, 42.828514, 49.529785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836216, 42.934586, 49.260151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723377, -0.203279, 0.659851,
		0.037952, 0.942527, 0.331969,
		-0.689410, 0.265181, -0.674087,
		41.629395, 43.014141, 49.057926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714485, 43.299229, 49.860531>,  <42.111980, 42.828514, 49.529785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714485, 43.299229, 49.860531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.482414, 43.151985, 49.569908>,  <41.343170, 43.063641, 49.395535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.482414, 43.151985, 49.569908>,  <41.714485, 43.299229, 49.860531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482414, 43.151985, 49.569908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686830, -0.258354, 0.679351,
		-0.437783, 0.893169, -0.102935,
		-0.580182, -0.368107, -0.726558,
		41.308361, 43.041553, 49.351940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014080, 43.525906, 49.974705>,  <41.714485, 43.299229, 49.860531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014080, 43.525906, 49.974705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.984249, 43.195984, 49.750511>,  <40.966351, 42.998032, 49.615993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.984249, 43.195984, 49.750511>,  <41.014080, 43.525906, 49.974705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984249, 43.195984, 49.750511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740729, -0.330484, 0.584893,
		-0.667652, 0.458784, -0.586309,
		-0.074574, -0.824802, -0.560483,
		40.961876, 42.948544, 49.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335358, 43.470402, 50.032326>,  <41.014080, 43.525906, 49.974705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335358, 43.470402, 50.032326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461464, 43.116150, 49.895931>,  <40.537128, 42.903599, 49.814095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461464, 43.116150, 49.895931>,  <40.335358, 43.470402, 50.032326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461464, 43.116150, 49.895931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531885, -0.462469, 0.709381,
		-0.785942, -0.042280, -0.616853,
		0.315268, -0.885627, -0.340986,
		40.556046, 42.850460, 49.793636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754326, 43.066830, 50.059372>,  <40.335358, 43.470402, 50.032326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754326, 43.066830, 50.059372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063423, 42.812943, 50.059570>,  <40.248882, 42.660610, 50.059689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063423, 42.812943, 50.059570>,  <39.754326, 43.066830, 50.059372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063423, 42.812943, 50.059570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487107, -0.592535, 0.641584,
		-0.406931, -0.496021, -0.767053,
		0.772745, -0.634717, 0.000495,
		40.295246, 42.622528, 50.059719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443005, 42.400822, 49.880890>,  <39.754326, 43.066830, 50.059372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443005, 42.400822, 49.880890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793091, 42.323303, 50.058182>,  <40.003143, 42.276794, 50.164555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793091, 42.323303, 50.058182>,  <39.443005, 42.400822, 49.880890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793091, 42.323303, 50.058182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438248, -0.705559, 0.556888,
		0.204800, -0.681638, -0.702443,
		0.875211, -0.193793, 0.443225,
		40.055653, 42.265163, 50.191151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.525963, 41.660828, 49.851158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776077, 41.789276, 50.135662>,  <39.926147, 41.866344, 50.306366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776077, 41.789276, 50.135662>,  <39.525963, 41.660828, 49.851158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776077, 41.789276, 50.135662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447215, -0.599462, 0.663810,
		0.639540, -0.733160, -0.231226,
		0.625290, 0.321126, 0.711260,
		39.963665, 41.885612, 50.349041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560905, 41.088928, 50.269547>,  <39.525963, 41.660828, 49.851158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560905, 41.088928, 50.269547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719585, 41.380432, 50.492805>,  <39.814793, 41.555336, 50.626762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719585, 41.380432, 50.492805>,  <39.560905, 41.088928, 50.269547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719585, 41.380432, 50.492805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507031, -0.332908, 0.795042,
		0.765210, -0.598395, 0.237440,
		0.396703, 0.728764, 0.558150,
		39.838596, 41.599060, 50.660252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915394, 40.771416, 50.805656>,  <39.560905, 41.088928, 50.269547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915394, 40.771416, 50.805656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817417, 41.142448, 50.918514>,  <39.758633, 41.365067, 50.986229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817417, 41.142448, 50.918514>,  <39.915394, 40.771416, 50.805656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817417, 41.142448, 50.918514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320359, -0.352094, 0.879432,
		0.915081, 0.125023, 0.383400,
		-0.244942, 0.927577, 0.282142,
		39.743935, 41.420723, 51.003159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006496, 40.758045, 51.536030>,  <39.915394, 40.771416, 50.805656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006496, 40.758045, 51.536030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775948, 41.078423, 51.471172>,  <39.637619, 41.270649, 51.432259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775948, 41.078423, 51.471172>,  <40.006496, 40.758045, 51.536030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775948, 41.078423, 51.471172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560941, -0.243481, 0.791240,
		0.594258, 0.547000, 0.589617,
		-0.576369, 0.800942, -0.162144,
		39.603035, 41.318707, 51.422527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953423, 40.993351, 52.256649>,  <40.006496, 40.758045, 51.536030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953423, 40.993351, 52.256649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665619, 41.151985, 52.028606>,  <39.492935, 41.247166, 51.891781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665619, 41.151985, 52.028606>,  <39.953423, 40.993351, 52.256649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665619, 41.151985, 52.028606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648514, -0.089996, 0.755864,
		0.248459, 0.913575, 0.321946,
		-0.719512, 0.396588, -0.570106,
		39.449764, 41.270962, 51.857574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643429, 41.418034, 52.709980>,  <39.953423, 40.993351, 52.256649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643429, 41.418034, 52.709980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371078, 41.408791, 52.417164>,  <39.207668, 41.403244, 52.241474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371078, 41.408791, 52.417164>,  <39.643429, 41.418034, 52.709980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371078, 41.408791, 52.417164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732149, -0.004818, 0.681128,
		-0.019265, 0.999722, -0.013636,
		-0.680872, -0.023105, -0.732038,
		39.166817, 41.401859, 52.197552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232285, 42.022827, 52.787678>,  <39.643429, 41.418034, 52.709980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232285, 42.022827, 52.787678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012310, 41.759056, 52.582649>,  <38.880325, 41.600792, 52.459633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012310, 41.759056, 52.582649>,  <39.232285, 42.022827, 52.787678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012310, 41.759056, 52.582649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783511, 0.194756, 0.590068,
		-0.289283, 0.726100, -0.623774,
		-0.549932, -0.659430, -0.512568,
		38.847332, 41.561226, 52.428879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505066, 42.247677, 52.683262>,  <39.232285, 42.022827, 52.787678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505066, 42.247677, 52.683262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.450649, 41.860886, 52.597054>,  <38.417999, 41.628811, 52.545326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.450649, 41.860886, 52.597054>,  <38.505066, 42.247677, 52.683262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450649, 41.860886, 52.597054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721089, -0.052528, 0.690848,
		-0.679354, 0.249399, -0.690129,
		-0.136046, -0.966975, -0.215524,
		38.409836, 41.570793, 52.532398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790771, 42.145500, 52.451717>,  <38.505066, 42.247677, 52.683262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790771, 42.145500, 52.451717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958778, 41.825874, 52.623798>,  <38.059582, 41.634098, 52.727047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958778, 41.825874, 52.623798>,  <37.790771, 42.145500, 52.451717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958778, 41.825874, 52.623798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748275, -0.036715, 0.662372,
		-0.513485, -0.600119, -0.613343,
		0.420021, -0.799067, 0.430202,
		38.084785, 41.586155, 52.752857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218990, 41.642822, 52.582588>,  <37.790771, 42.145500, 52.451717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218990, 41.642822, 52.582588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521526, 41.571617, 52.834385>,  <37.703049, 41.528896, 52.985462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521526, 41.571617, 52.834385>,  <37.218990, 41.642822, 52.582588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521526, 41.571617, 52.834385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638950, 0.005366, 0.769230,
		-0.140310, -0.984014, -0.109682,
		0.756344, -0.178012, 0.629488,
		37.748428, 41.518215, 53.023232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964970, 41.187332, 52.999737>,  <37.218990, 41.642822, 52.582588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964970, 41.187332, 52.999737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291988, 41.298950, 53.201233>,  <37.488201, 41.365921, 53.322132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291988, 41.298950, 53.201233>,  <36.964970, 41.187332, 52.999737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291988, 41.298950, 53.201233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516674, -0.030846, 0.855626,
		0.254294, -0.959783, 0.118956,
		0.817547, 0.279042, 0.503739,
		37.537251, 41.382664, 53.352356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928940, 40.788170, 53.564083>,  <36.964970, 41.187332, 52.999737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928940, 40.788170, 53.564083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144886, 41.110771, 53.660500>,  <37.274452, 41.304333, 53.718349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144886, 41.110771, 53.660500>,  <36.928940, 40.788170, 53.564083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144886, 41.110771, 53.660500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493024, 0.070863, 0.867125,
		0.682254, -0.586973, 0.435880,
		0.539867, 0.806499, 0.241046,
		37.306847, 41.352722, 53.732815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945885, 40.722046, 54.317871>,  <36.928940, 40.788170, 53.564083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945885, 40.722046, 54.317871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066120, 41.092834, 54.228092>,  <37.138260, 41.315308, 54.174225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066120, 41.092834, 54.228092>,  <36.945885, 40.722046, 54.317871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066120, 41.092834, 54.228092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314391, 0.318478, 0.894277,
		0.900448, -0.198243, 0.387160,
		0.300586, 0.926969, -0.224447,
		37.156296, 41.370926, 54.160759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416355, 40.950634, 54.851974>,  <36.945885, 40.722046, 54.317871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416355, 40.950634, 54.851974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275352, 41.294899, 54.705002>,  <37.190750, 41.501457, 54.616817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275352, 41.294899, 54.705002>,  <37.416355, 40.950634, 54.851974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275352, 41.294899, 54.705002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186527, 0.320138, 0.928827,
		0.917031, 0.395954, 0.047686,
		-0.352507, 0.860658, -0.367433,
		37.169601, 41.553097, 54.594772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706177, 41.369759, 55.301479>,  <37.416355, 40.950634, 54.851974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706177, 41.369759, 55.301479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424034, 41.599823, 55.135750>,  <37.254749, 41.737862, 55.036312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424034, 41.599823, 55.135750>,  <37.706177, 41.369759, 55.301479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424034, 41.599823, 55.135750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248130, 0.347182, 0.904376,
		0.664007, 0.740713, -0.102172,
		-0.705355, 0.575160, -0.414325,
		37.212429, 41.772369, 55.011452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737347, 42.031082, 55.508224>,  <37.706177, 41.369759, 55.301479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737347, 42.031082, 55.508224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354584, 41.993271, 55.398399>,  <37.124924, 41.970585, 55.332504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354584, 41.993271, 55.398399>,  <37.737347, 42.031082, 55.508224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354584, 41.993271, 55.398399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287021, 0.451313, 0.844947,
		0.044042, 0.887345, -0.458998,
		-0.956911, -0.094528, -0.274563,
		37.067509, 41.964912, 55.316029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396500, 42.671108, 55.525650>,  <37.737347, 42.031082, 55.508224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396500, 42.671108, 55.525650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088398, 42.417717, 55.555054>,  <36.903538, 42.265682, 55.572697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088398, 42.417717, 55.555054>,  <37.396500, 42.671108, 55.525650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088398, 42.417717, 55.555054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323677, 0.487651, 0.810821,
		-0.549488, 0.600747, -0.580660,
		-0.770257, -0.633482, 0.073510,
		36.857323, 42.227673, 55.577106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762772, 43.102997, 55.517975>,  <37.396500, 42.671108, 55.525650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762772, 43.102997, 55.517975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650776, 42.755768, 55.681950>,  <36.583576, 42.547428, 55.780334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650776, 42.755768, 55.681950>,  <36.762772, 43.102997, 55.517975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650776, 42.755768, 55.681950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602771, 0.491318, 0.628708,
		-0.747176, -0.071065, -0.660816,
		-0.279992, -0.868076, 0.409937,
		36.566780, 42.495346, 55.804932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002556, 43.151798, 55.746319>,  <36.762772, 43.102997, 55.517975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002556, 43.151798, 55.746319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127686, 42.821121, 55.933388>,  <36.202763, 42.622715, 56.045628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127686, 42.821121, 55.933388>,  <36.002556, 43.151798, 55.746319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127686, 42.821121, 55.933388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454250, 0.302207, 0.838050,
		-0.834145, -0.474604, -0.280987,
		0.312826, -0.826693, 0.467674,
		36.221535, 42.573112, 56.073689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501255, 42.880917, 56.194202>,  <36.002556, 43.151798, 55.746319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501255, 42.880917, 56.194202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824547, 42.730202, 56.375221>,  <36.018520, 42.639774, 56.483833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824547, 42.730202, 56.375221>,  <35.501255, 42.880917, 56.194202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824547, 42.730202, 56.375221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401837, 0.208877, 0.891570,
		-0.430455, -0.902444, 0.017415,
		0.808230, -0.376783, 0.452548,
		36.067017, 42.617168, 56.510986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284046, 42.392338, 56.591473>,  <35.501255, 42.880917, 56.194202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284046, 42.392338, 56.591473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648418, 42.452057, 56.745316>,  <35.867043, 42.487888, 56.837620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648418, 42.452057, 56.745316>,  <35.284046, 42.392338, 56.591473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648418, 42.452057, 56.745316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408974, 0.204051, 0.889440,
		0.054307, -0.967510, 0.246932,
		0.910929, 0.149292, 0.384605,
		35.921696, 42.496845, 56.860699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214512, 42.060879, 57.260654>,  <35.284046, 42.392338, 56.591473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214512, 42.060879, 57.260654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515564, 42.324257, 57.260162>,  <35.696194, 42.482285, 57.259865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515564, 42.324257, 57.260162>,  <35.214512, 42.060879, 57.260654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515564, 42.324257, 57.260162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215435, 0.248022, 0.944496,
		0.622201, -0.710591, 0.328520,
		0.752631, 0.658442, -0.001233,
		35.741352, 42.521790, 57.259792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645275, 41.922478, 57.878170>,  <35.214512, 42.060879, 57.260654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645275, 41.922478, 57.878170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729797, 42.299942, 57.776306>,  <35.780510, 42.526421, 57.715187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729797, 42.299942, 57.776306>,  <35.645275, 41.922478, 57.878170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729797, 42.299942, 57.776306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132710, 0.285826, 0.949048,
		0.968368, -0.166747, 0.185631,
		0.211309, 0.943663, -0.254655,
		35.793190, 42.583042, 57.699909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926102, 41.219170, 58.050686>,  <35.645275, 41.922478, 57.878170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926102, 41.219170, 58.050686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996918, 40.970230, 58.355667>,  <36.039410, 40.820866, 58.538658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996918, 40.970230, 58.355667>,  <35.926102, 41.219170, 58.050686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996918, 40.970230, 58.355667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496986, -0.612138, -0.615054,
		0.849506, 0.487822, 0.200922,
		0.177045, -0.622347, 0.762456,
		36.050030, 40.783527, 58.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733349, 41.074760, 58.288818>,  <35.926102, 41.219170, 58.050686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733349, 41.074760, 58.288818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524948, 40.752838, 58.402550>,  <36.399906, 40.559685, 58.470791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524948, 40.752838, 58.402550>,  <36.733349, 41.074760, 58.288818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524948, 40.752838, 58.402550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664780, -0.591542, -0.456230,
		0.535370, -0.048680, 0.843214,
		-0.521006, -0.804804, 0.284332,
		36.368645, 40.511398, 58.487850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214001, 40.740986, 58.596085>,  <36.733349, 41.074760, 58.288818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214001, 40.740986, 58.596085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941689, 40.469727, 58.485340>,  <36.778301, 40.306973, 58.418892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941689, 40.469727, 58.485340>,  <37.214001, 40.740986, 58.596085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941689, 40.469727, 58.485340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700886, -0.493265, -0.515216,
		0.212828, -0.544797, 0.811111,
		-0.680781, -0.678149, -0.276861,
		36.737453, 40.266281, 58.402283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525764, 40.124134, 58.590252>,  <37.214001, 40.740986, 58.596085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525764, 40.124134, 58.590252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214291, 40.065292, 58.346279>,  <37.027405, 40.029987, 58.199898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214291, 40.065292, 58.346279>,  <37.525764, 40.124134, 58.590252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214291, 40.065292, 58.346279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625482, -0.258293, -0.736245,
		-0.049237, -0.954801, 0.293139,
		-0.778683, -0.147103, -0.609929,
		36.980686, 40.021160, 58.163300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601524, 39.416698, 58.417290>,  <37.525764, 40.124134, 58.590252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601524, 39.416698, 58.417290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.362442, 39.571175, 58.136261>,  <37.218994, 39.663860, 57.967644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.362442, 39.571175, 58.136261>,  <37.601524, 39.416698, 58.417290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362442, 39.571175, 58.136261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557848, -0.429067, -0.710427,
		-0.575810, -0.816554, 0.041020,
		-0.597702, 0.386188, -0.702574,
		37.183132, 39.687031, 57.925488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553059, 38.906353, 57.810795>,  <37.601524, 39.416698, 58.417290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553059, 38.906353, 57.810795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410656, 39.235115, 57.632923>,  <37.325214, 39.432373, 57.526199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410656, 39.235115, 57.632923>,  <37.553059, 38.906353, 57.810795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410656, 39.235115, 57.632923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300662, -0.349809, -0.887263,
		-0.884796, -0.449566, -0.122582,
		-0.356003, 0.821903, -0.444677,
		37.303856, 39.481686, 57.499519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399712, 38.638344, 57.138435>,  <37.553059, 38.906353, 57.810795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399712, 38.638344, 57.138435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432693, 39.035469, 57.103737>,  <37.452480, 39.273743, 57.082916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432693, 39.035469, 57.103737>,  <37.399712, 38.638344, 57.138435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432693, 39.035469, 57.103737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262452, -0.105600, -0.959149,
		-0.961416, 0.056317, -0.269273,
		0.082452, 0.992813, -0.086745,
		37.457428, 39.333313, 57.077713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001194, 38.731853, 56.635868>,  <37.399712, 38.638344, 57.138435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001194, 38.731853, 56.635868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237442, 39.052979, 56.668518>,  <37.379192, 39.245651, 56.688107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237442, 39.052979, 56.668518>,  <37.001194, 38.731853, 56.635868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237442, 39.052979, 56.668518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239462, -0.077774, -0.967786,
		-0.770598, 0.591143, -0.238177,
		0.590624, 0.802808, 0.081624,
		37.414631, 39.293819, 56.693005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735779, 39.130898, 56.188339>,  <37.001194, 38.731853, 56.635868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735779, 39.130898, 56.188339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104511, 39.264732, 56.266598>,  <37.325752, 39.345036, 56.313553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104511, 39.264732, 56.266598>,  <36.735779, 39.130898, 56.188339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104511, 39.264732, 56.266598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203951, 0.010491, -0.978925,
		-0.329593, 0.942305, -0.058569,
		0.921831, 0.334592, 0.195642,
		37.381062, 39.365108, 56.325291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835648, 39.657227, 55.694412>,  <36.735779, 39.130898, 56.188339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835648, 39.657227, 55.694412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207863, 39.550835, 55.795097>,  <37.431190, 39.487000, 55.855507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207863, 39.550835, 55.795097>,  <36.835648, 39.657227, 55.694412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207863, 39.550835, 55.795097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252835, -0.030610, -0.967025,
		0.264913, 0.963493, 0.038765,
		0.930535, -0.265978, 0.251714,
		37.487022, 39.471043, 55.870613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303471, 40.114941, 55.357307>,  <36.835648, 39.657227, 55.694412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303471, 40.114941, 55.357307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530403, 39.802101, 55.460434>,  <37.666561, 39.614399, 55.522308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530403, 39.802101, 55.460434>,  <37.303471, 40.114941, 55.357307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530403, 39.802101, 55.460434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293856, -0.100194, -0.950584,
		0.769278, 0.615053, 0.172980,
		0.567327, -0.782094, 0.257814,
		37.700600, 39.567474, 55.537777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989201, 40.237911, 55.098690>,  <37.303471, 40.114941, 55.357307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989201, 40.237911, 55.098690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969482, 39.839478, 55.128071>,  <37.957653, 39.600418, 55.145699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969482, 39.839478, 55.128071>,  <37.989201, 40.237911, 55.098690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969482, 39.839478, 55.128071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402773, -0.087118, -0.911144,
		0.913971, -0.015332, 0.405488,
		-0.049295, -0.996080, 0.073448,
		37.954693, 39.540653, 55.150105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601826, 40.121490, 54.862656>,  <37.989201, 40.237911, 55.098690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601826, 40.121490, 54.862656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386078, 39.786995, 54.823090>,  <38.256630, 39.586296, 54.799351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386078, 39.786995, 54.823090>,  <38.601826, 40.121490, 54.862656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386078, 39.786995, 54.823090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167958, 0.008267, -0.985759,
		0.825148, -0.548303, 0.135993,
		-0.539371, -0.836239, -0.098913,
		38.224266, 39.536125, 54.793415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983719, 39.627430, 54.464928>,  <38.601826, 40.121490, 54.862656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983719, 39.627430, 54.464928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614258, 39.476456, 54.438389>,  <38.392582, 39.385872, 54.422466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614258, 39.476456, 54.438389>,  <38.983719, 39.627430, 54.464928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614258, 39.476456, 54.438389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170658, -0.250108, -0.953059,
		0.343123, -0.891622, 0.295427,
		-0.923657, -0.377433, -0.066345,
		38.337162, 39.363224, 54.418484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071171, 38.948669, 54.221848>,  <38.983719, 39.627430, 54.464928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071171, 38.948669, 54.221848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697170, 39.057968, 54.131424>,  <38.472771, 39.123547, 54.077168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697170, 39.057968, 54.131424>,  <39.071171, 38.948669, 54.221848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697170, 39.057968, 54.131424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102954, -0.400843, -0.910344,
		-0.339364, -0.874449, 0.346657,
		-0.935004, 0.273248, -0.226060,
		38.416668, 39.139942, 54.063606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796276, 38.404812, 53.798805>,  <39.071171, 38.948669, 54.221848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796276, 38.404812, 53.798805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547050, 38.707970, 53.721458>,  <38.397514, 38.889866, 53.675049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547050, 38.707970, 53.721458>,  <38.796276, 38.404812, 53.798805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547050, 38.707970, 53.721458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033666, -0.221006, -0.974691,
		-0.781448, -0.613803, 0.112185,
		-0.623062, 0.757893, -0.193369,
		38.360130, 38.935337, 53.663448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370918, 38.140244, 53.287239>,  <38.796276, 38.404812, 53.798805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370918, 38.140244, 53.287239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358101, 38.538795, 53.255730>,  <38.350410, 38.777927, 53.236824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358101, 38.538795, 53.255730>,  <38.370918, 38.140244, 53.287239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358101, 38.538795, 53.255730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061396, -0.076705, -0.995162,
		-0.997599, -0.036725, -0.058716,
		-0.032043, 0.996377, -0.078776,
		38.348488, 38.837708, 53.232098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024139, 38.184711, 52.707169>,  <38.370918, 38.140244, 53.287239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024139, 38.184711, 52.707169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179367, 38.549400, 52.761093>,  <38.272503, 38.768211, 52.793449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179367, 38.549400, 52.761093>,  <38.024139, 38.184711, 52.707169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179367, 38.549400, 52.761093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334562, -0.003058, -0.942369,
		-0.858762, 0.410806, -0.306212,
		0.388067, 0.911718, 0.134814,
		38.295788, 38.822914, 52.801537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844158, 38.561630, 52.127033>,  <38.024139, 38.184711, 52.707169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844158, 38.561630, 52.127033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153770, 38.766022, 52.276585>,  <38.339539, 38.888657, 52.366314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153770, 38.766022, 52.276585>,  <37.844158, 38.561630, 52.127033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153770, 38.766022, 52.276585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451905, -0.032261, -0.891483,
		-0.443465, 0.858989, -0.255883,
		0.774029, 0.510976, 0.373875,
		38.385979, 38.919315, 52.388748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845745, 39.106651, 51.726837>,  <37.844158, 38.561630, 52.127033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845745, 39.106651, 51.726837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214714, 39.082466, 51.879410>,  <38.436096, 39.067955, 51.970955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214714, 39.082466, 51.879410>,  <37.845745, 39.106651, 51.726837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214714, 39.082466, 51.879410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386000, 0.113103, -0.915539,
		0.012212, 0.991742, 0.127665,
		0.922418, -0.060459, 0.381432,
		38.491440, 39.064327, 51.993839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272846, 39.692543, 51.436287>,  <37.845745, 39.106651, 51.726837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272846, 39.692543, 51.436287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.554729, 39.441032, 51.567760>,  <38.723858, 39.290127, 51.646645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.554729, 39.441032, 51.567760>,  <38.272846, 39.692543, 51.436287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554729, 39.441032, 51.567760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537036, 0.169969, -0.826259,
		0.463662, 0.758785, 0.457451,
		0.704706, -0.628773, 0.328686,
		38.766140, 39.252399, 51.666367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.915375, 43.909977, 48.221306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203400, 43.666451, 48.354485>,  <41.376213, 43.520336, 48.434391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203400, 43.666451, 48.354485>,  <40.915375, 43.909977, 48.221306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203400, 43.666451, 48.354485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690400, 0.580382, -0.431861,
		0.069690, 0.540832, 0.838239,
		0.720063, -0.608816, 0.332944,
		41.419418, 43.483807, 48.454369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436008, 44.432011, 48.432571>,  <40.915375, 43.909977, 48.221306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436008, 44.432011, 48.432571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.595848, 44.068939, 48.381294>,  <41.691753, 43.851097, 48.350529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.595848, 44.068939, 48.381294>,  <41.436008, 44.432011, 48.432571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595848, 44.068939, 48.381294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691894, 0.390385, -0.607357,
		0.601332, 0.154003, 0.784017,
		0.399603, -0.907680, -0.128197,
		41.715729, 43.796635, 48.342834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203968, 44.505383, 48.466473>,  <41.436008, 44.432011, 48.432571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203968, 44.505383, 48.466473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142754, 44.150291, 48.292801>,  <42.106026, 43.937237, 48.188599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142754, 44.150291, 48.292801>,  <42.203968, 44.505383, 48.466473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142754, 44.150291, 48.292801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719407, 0.201141, -0.664828,
		0.677520, -0.414094, 0.607858,
		-0.153036, -0.887732, -0.434179,
		42.096844, 43.883972, 48.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840240, 44.447403, 48.197128>,  <42.203968, 44.505383, 48.466473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840240, 44.447403, 48.197128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614731, 44.187065, 47.993736>,  <42.479424, 44.030861, 47.871700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614731, 44.187065, 47.993736>,  <42.840240, 44.447403, 48.197128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614731, 44.187065, 47.993736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618743, 0.074977, -0.782008,
		0.547093, -0.755495, 0.360438,
		-0.563779, -0.650849, -0.508476,
		42.445599, 43.991810, 47.841194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336479, 44.125370, 47.789364>,  <42.840240, 44.447403, 48.197128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336479, 44.125370, 47.789364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.995033, 44.020088, 47.609562>,  <42.790165, 43.956921, 47.501678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.995033, 44.020088, 47.609562>,  <43.336479, 44.125370, 47.789364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995033, 44.020088, 47.609562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455597, 0.041087, -0.889237,
		0.252522, -0.963864, 0.084844,
		-0.853618, -0.263207, -0.449509,
		42.738949, 43.941128, 47.474709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468239, 43.475685, 47.318172>,  <43.336479, 44.125370, 47.789364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468239, 43.475685, 47.318172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137585, 43.668076, 47.201324>,  <42.939190, 43.783508, 47.131218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137585, 43.668076, 47.201324>,  <43.468239, 43.475685, 47.318172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137585, 43.668076, 47.201324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301635, -0.059517, -0.951564,
		-0.475064, -0.874712, -0.095880,
		-0.826638, 0.480974, -0.292118,
		42.889595, 43.812366, 47.113689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078297, 43.047276, 46.792919>,  <43.468239, 43.475685, 47.318172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078297, 43.047276, 46.792919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.995338, 43.434669, 46.737755>,  <42.945564, 43.667107, 46.704655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.995338, 43.434669, 46.737755>,  <43.078297, 43.047276, 46.792919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995338, 43.434669, 46.737755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336058, -0.061861, -0.939808,
		-0.918723, -0.241259, -0.312638,
		-0.207397, 0.968487, -0.137910,
		42.933121, 43.725216, 46.696381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760952, 43.060638, 46.115417>,  <43.078297, 43.047276, 46.792919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760952, 43.060638, 46.115417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892677, 43.432465, 46.181717>,  <42.971710, 43.655560, 46.221497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892677, 43.432465, 46.181717>,  <42.760952, 43.060638, 46.115417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892677, 43.432465, 46.181717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380549, 0.029988, -0.924274,
		-0.864140, 0.367446, -0.343868,
		0.329309, 0.929561, 0.165745,
		42.991470, 43.711334, 46.231441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544701, 43.430359, 45.529327>,  <42.760952, 43.060638, 46.115417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544701, 43.430359, 45.529327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836090, 43.660042, 45.678787>,  <43.010925, 43.797852, 45.768463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836090, 43.660042, 45.678787>,  <42.544701, 43.430359, 45.529327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836090, 43.660042, 45.678787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420468, 0.055855, -0.905587,
		-0.540861, 0.816805, -0.200745,
		0.728475, 0.574203, 0.373650,
		43.054634, 43.832302, 45.790882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642853, 43.946247, 45.037865>,  <42.544701, 43.430359, 45.529327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642853, 43.946247, 45.037865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973568, 43.964630, 45.262119>,  <43.171997, 43.975658, 45.396671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973568, 43.964630, 45.262119>,  <42.642853, 43.946247, 45.037865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973568, 43.964630, 45.262119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549196, 0.149665, -0.822182,
		-0.121694, 0.987668, 0.098500,
		0.826785, 0.045959, 0.560637,
		43.221603, 43.978416, 45.430309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005089, 44.570240, 44.769104>,  <42.642853, 43.946247, 45.037865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005089, 44.570240, 44.769104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257751, 44.323151, 44.956474>,  <43.409351, 44.174896, 45.068897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257751, 44.323151, 44.956474>,  <43.005089, 44.570240, 44.769104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257751, 44.323151, 44.956474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573768, -0.033828, -0.818319,
		0.521340, 0.785668, 0.333062,
		0.631660, -0.617723, 0.468427,
		43.447250, 44.137833, 45.097004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688713, 44.817120, 44.668472>,  <43.005089, 44.570240, 44.769104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688713, 44.817120, 44.668472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735138, 44.433327, 44.771168>,  <43.762993, 44.203049, 44.832787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735138, 44.433327, 44.771168>,  <43.688713, 44.817120, 44.668472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735138, 44.433327, 44.771168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541937, -0.155445, -0.825918,
		0.832366, 0.234996, 0.501940,
		0.116063, -0.959486, 0.256740,
		43.769958, 44.145481, 44.848190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403706, 44.638206, 44.591778>,  <43.688713, 44.817120, 44.668472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403706, 44.638206, 44.591778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166161, 44.321198, 44.536308>,  <44.023632, 44.130993, 44.503029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166161, 44.321198, 44.536308>,  <44.403706, 44.638206, 44.591778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166161, 44.321198, 44.536308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416515, -0.155374, -0.895753,
		0.688361, -0.589714, 0.422370,
		-0.593864, -0.792525, -0.138672,
		43.988003, 44.083439, 44.494705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036732, 44.653095, 44.828487>,  <44.403706, 44.638206, 44.591778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036732, 44.653095, 44.828487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003761, 44.407776, 45.142700>,  <44.983978, 44.260582, 45.331230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003761, 44.407776, 45.142700>,  <45.036732, 44.653095, 44.828487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003761, 44.407776, 45.142700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969627, 0.132779, 0.205407,
		-0.230279, 0.778607, 0.583731,
		-0.082425, -0.613303, 0.785535,
		44.979034, 44.223785, 45.378361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443539, 45.238937, 44.980537>,  <45.036732, 44.653095, 44.828487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443539, 45.238937, 44.980537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.797104, 45.419205, 45.030495>,  <46.009243, 45.527363, 45.060467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.797104, 45.419205, 45.030495>,  <45.443539, 45.238937, 44.980537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797104, 45.419205, 45.030495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237823, 0.203239, 0.949807,
		0.402663, -0.869249, 0.286824,
		0.883913, 0.450666, 0.124891,
		46.062279, 45.554405, 45.067963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782799, 45.052380, 45.628395>,  <45.443539, 45.238937, 44.980537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782799, 45.052380, 45.628395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911194, 45.417252, 45.526493>,  <45.988232, 45.636173, 45.465351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911194, 45.417252, 45.526493>,  <45.782799, 45.052380, 45.628395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911194, 45.417252, 45.526493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259277, 0.343344, 0.902713,
		0.910902, -0.223708, 0.346716,
		0.320987, 0.912178, -0.254750,
		46.007488, 45.690907, 45.450069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223423, 45.298702, 46.217426>,  <45.782799, 45.052380, 45.628395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223423, 45.298702, 46.217426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062538, 45.604095, 46.015308>,  <45.966007, 45.787331, 45.894039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062538, 45.604095, 46.015308>,  <46.223423, 45.298702, 46.217426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062538, 45.604095, 46.015308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281528, 0.422030, 0.861761,
		0.871189, 0.488862, 0.045198,
		-0.402208, 0.763482, -0.505296,
		45.941875, 45.833141, 45.863720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278221, 45.826637, 46.731636>,  <46.223423, 45.298702, 46.217426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278221, 45.826637, 46.731636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.005127, 45.945831, 46.464779>,  <45.841270, 46.017349, 46.304665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.005127, 45.945831, 46.464779>,  <46.278221, 45.826637, 46.731636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005127, 45.945831, 46.464779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618065, 0.251452, 0.744827,
		0.389701, 0.920856, 0.012499,
		-0.682736, 0.297985, -0.667141,
		45.800304, 46.035229, 46.264637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118134, 46.463840, 46.954956>,  <46.278221, 45.826637, 46.731636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118134, 46.463840, 46.954956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806465, 46.362762, 46.725510>,  <45.619465, 46.302116, 46.587841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806465, 46.362762, 46.725510>,  <46.118134, 46.463840, 46.954956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806465, 46.362762, 46.725510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625791, 0.261346, 0.734904,
		-0.035795, 0.931581, -0.361768,
		-0.779169, -0.252697, -0.573620,
		45.572716, 46.286953, 46.553425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631886, 46.993832, 47.115891>,  <46.118134, 46.463840, 46.954956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631886, 46.993832, 47.115891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421165, 46.703415, 46.939098>,  <45.294731, 46.529167, 46.833023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421165, 46.703415, 46.939098>,  <45.631886, 46.993832, 47.115891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421165, 46.703415, 46.939098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724817, 0.112110, 0.679758,
		-0.443980, 0.678455, -0.585305,
		-0.526804, -0.726038, -0.441981,
		45.263123, 46.485603, 46.806503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037045, 47.322212, 47.009262>,  <45.631886, 46.993832, 47.115891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037045, 47.322212, 47.009262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979290, 46.926407, 47.010799>,  <44.944637, 46.688923, 47.011723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979290, 46.926407, 47.010799>,  <45.037045, 47.322212, 47.009262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979290, 46.926407, 47.010799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669112, 0.100495, 0.736336,
		-0.729000, 0.103751, -0.676605,
		-0.144391, -0.989513, 0.003840,
		44.935974, 46.629555, 47.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256428, 47.248779, 47.189198>,  <45.037045, 47.322212, 47.009262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256428, 47.248779, 47.189198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410675, 46.884491, 47.248360>,  <44.503223, 46.665916, 47.283859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410675, 46.884491, 47.248360>,  <44.256428, 47.248779, 47.189198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410675, 46.884491, 47.248360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604395, -0.128214, 0.786300,
		-0.697139, -0.392609, -0.599880,
		0.385621, -0.910725, 0.147908,
		44.526363, 46.611275, 47.292732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749382, 46.844624, 47.349098>,  <44.256428, 47.248779, 47.189198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749382, 46.844624, 47.349098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056297, 46.645439, 47.510742>,  <44.240444, 46.525928, 47.607727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056297, 46.645439, 47.510742>,  <43.749382, 46.844624, 47.349098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056297, 46.645439, 47.510742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543952, -0.171566, 0.821390,
		-0.339693, -0.850056, -0.402510,
		0.767284, -0.497966, 0.404110,
		44.286484, 46.496048, 47.631973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430695, 46.091492, 47.556293>,  <43.749382, 46.844624, 47.349098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430695, 46.091492, 47.556293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769295, 46.159935, 47.757954>,  <43.972454, 46.201000, 47.878948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769295, 46.159935, 47.757954>,  <43.430695, 46.091492, 47.556293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769295, 46.159935, 47.757954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424256, -0.355275, 0.832939,
		0.321635, -0.918967, -0.228145,
		0.846497, 0.171111, 0.504146,
		44.023243, 46.211269, 47.909199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578533, 45.380802, 47.871140>,  <43.430695, 46.091492, 47.556293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578533, 45.380802, 47.871140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773846, 45.679764, 48.051346>,  <43.891033, 45.859142, 48.159470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773846, 45.679764, 48.051346>,  <43.578533, 45.380802, 47.871140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773846, 45.679764, 48.051346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300736, -0.340506, 0.890850,
		0.819229, -0.570475, 0.058508,
		0.488285, 0.747405, 0.450515,
		43.920330, 45.903984, 48.186501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952599, 45.090775, 48.394417>,  <43.578533, 45.380802, 47.871140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952599, 45.090775, 48.394417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946846, 45.479675, 48.487820>,  <43.943394, 45.713017, 48.543861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946846, 45.479675, 48.487820>,  <43.952599, 45.090775, 48.394417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946846, 45.479675, 48.487820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172230, -0.232446, 0.957239,
		0.984952, -0.026449, 0.170794,
		-0.014382, 0.972250, 0.233503,
		43.942532, 45.771351, 48.557869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414139, 45.214157, 49.055401>,  <43.952599, 45.090775, 48.394417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414139, 45.214157, 49.055401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142548, 45.505089, 49.015442>,  <43.979591, 45.679649, 48.991467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142548, 45.505089, 49.015442>,  <44.414139, 45.214157, 49.055401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142548, 45.505089, 49.015442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311412, -0.162097, 0.936348,
		0.664841, 0.666869, 0.336560,
		-0.678976, 0.727331, -0.099902,
		43.938854, 45.723289, 48.985470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488197, 45.558918, 49.735607>,  <44.414139, 45.214157, 49.055401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488197, 45.558918, 49.735607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137749, 45.659813, 49.571274>,  <43.927479, 45.720348, 49.472675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137749, 45.659813, 49.571274>,  <44.488197, 45.558918, 49.735607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137749, 45.659813, 49.571274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459176, -0.177028, 0.870528,
		0.146848, 0.951335, 0.270919,
		-0.876124, 0.252235, -0.410834,
		43.874912, 45.735485, 49.448025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166954, 45.712517, 50.027832>,  <44.488197, 45.558918, 49.735607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166954, 45.712517, 50.027832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282997, 45.332352, 50.072659>,  <45.352623, 45.104252, 50.099556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282997, 45.332352, 50.072659>,  <45.166954, 45.712517, 50.027832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282997, 45.332352, 50.072659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397430, 0.013126, -0.917538,
		0.870566, 0.310725, 0.381529,
		0.290111, -0.950409, 0.112065,
		45.370029, 45.047230, 50.106277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842789, 45.785114, 49.831078>,  <45.166954, 45.712517, 50.027832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842789, 45.785114, 49.831078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755577, 45.396362, 49.795483>,  <45.703251, 45.163113, 49.774124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755577, 45.396362, 49.795483>,  <45.842789, 45.785114, 49.831078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755577, 45.396362, 49.795483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481667, -0.027854, -0.875912,
		0.848798, -0.233841, 0.474194,
		-0.218033, -0.971876, -0.088991,
		45.690166, 45.104801, 49.768784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483101, 45.489494, 49.813370>,  <45.842789, 45.785114, 49.831078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483101, 45.489494, 49.813370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.236938, 45.210228, 49.667038>,  <46.089241, 45.042667, 49.579239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.236938, 45.210228, 49.667038>,  <46.483101, 45.489494, 49.813370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236938, 45.210228, 49.667038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649704, -0.186547, -0.736943,
		0.446268, -0.691201, 0.568406,
		-0.615410, -0.698170, -0.365826,
		46.052315, 45.000778, 49.557289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876148, 44.856731, 49.701015>,  <46.483101, 45.489494, 49.813370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876148, 44.856731, 49.701015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562889, 44.770744, 49.467613>,  <46.374935, 44.719151, 49.327572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562889, 44.770744, 49.467613>,  <46.876148, 44.856731, 49.701015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562889, 44.770744, 49.467613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621082, -0.316749, -0.716887,
		-0.030713, -0.923828, 0.381575,
		-0.783143, -0.214971, -0.583501,
		46.327946, 44.706253, 49.292564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.849995, 44.101727, 49.496487>,  <46.876148, 44.856731, 49.701015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.849995, 44.101727, 49.496487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636375, 44.308990, 49.229263>,  <46.508202, 44.433350, 49.068932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636375, 44.308990, 49.229263>,  <46.849995, 44.101727, 49.496487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636375, 44.308990, 49.229263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618753, -0.298926, -0.726491,
		-0.576137, -0.801345, -0.160971,
		-0.534051, 0.518160, -0.668057,
		46.476158, 44.464439, 49.028847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701519, 43.567436, 48.909943>,  <46.849995, 44.101727, 49.496487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701519, 43.567436, 48.909943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.686783, 43.942589, 48.771946>,  <46.677940, 44.167683, 48.689148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.686783, 43.942589, 48.771946>,  <46.701519, 43.567436, 48.909943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686783, 43.942589, 48.771946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512666, -0.278592, -0.812133,
		-0.857797, -0.206786, -0.470557,
		-0.036845, 0.937884, -0.344987,
		46.675728, 44.223953, 48.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546238, 43.437618, 48.204670>,  <46.701519, 43.567436, 48.909943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546238, 43.437618, 48.204670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.634644, 43.826523, 48.235291>,  <46.687687, 44.059864, 48.253662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.634644, 43.826523, 48.235291>,  <46.546238, 43.437618, 48.204670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634644, 43.826523, 48.235291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455114, -0.033400, -0.889807,
		-0.862568, 0.231499, -0.449872,
		0.221015, 0.972262, 0.076549,
		46.700947, 44.118202, 48.258255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435448, 43.644184, 47.492451>,  <46.546238, 43.437618, 48.204670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435448, 43.644184, 47.492451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.688477, 43.914917, 47.643051>,  <46.840294, 44.077358, 47.733414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.688477, 43.914917, 47.643051>,  <46.435448, 43.644184, 47.492451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688477, 43.914917, 47.643051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592357, -0.109610, -0.798185,
		-0.498968, 0.727932, -0.470262,
		0.632570, 0.676831, 0.376503,
		46.878246, 44.117966, 47.756001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583134, 44.138641, 46.948090>,  <46.435448, 43.644184, 47.492451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583134, 44.138641, 46.948090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.873466, 44.192581, 47.217899>,  <47.047665, 44.224945, 47.379784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.873466, 44.192581, 47.217899>,  <46.583134, 44.138641, 46.948090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873466, 44.192581, 47.217899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661034, 0.134498, -0.738203,
		-0.190271, 0.981695, 0.008480,
		0.725831, 0.134853, 0.674525,
		47.091217, 44.233036, 47.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815258, 44.857841, 46.803791>,  <46.583134, 44.138641, 46.948090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815258, 44.857841, 46.803791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.116158, 44.652985, 46.969601>,  <47.296700, 44.530071, 47.069084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.116158, 44.652985, 46.969601>,  <46.815258, 44.857841, 46.803791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116158, 44.652985, 46.969601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579211, 0.214146, -0.786547,
		0.314054, 0.831778, 0.457729,
		0.752253, -0.512140, 0.414522,
		47.341835, 44.499344, 47.093956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358353, 45.235485, 46.617760>,  <46.815258, 44.857841, 46.803791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358353, 45.235485, 46.617760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.535347, 44.897560, 46.738094>,  <47.641544, 44.694805, 46.810295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.535347, 44.897560, 46.738094>,  <47.358353, 45.235485, 46.617760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535347, 44.897560, 46.738094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671210, 0.089529, -0.735841,
		0.594712, 0.527524, 0.606660,
		0.442488, -0.844809, 0.300836,
		47.668095, 44.644115, 46.828346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084747, 45.429829, 46.667660>,  <47.358353, 45.235485, 46.617760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084747, 45.429829, 46.667660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.014168, 45.040176, 46.611183>,  <47.971821, 44.806385, 46.577297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.014168, 45.040176, 46.611183>,  <48.084747, 45.429829, 46.667660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.014168, 45.040176, 46.611183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645851, -0.006332, -0.763437,
		0.742794, -0.225895, 0.630261,
		-0.176447, -0.974131, -0.141192,
		47.961235, 44.747936, 46.568825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.441589, 45.261864, 53.847801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305313, 44.914574, 53.703514>,  <44.223545, 44.706200, 53.616940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305313, 44.914574, 53.703514>,  <44.441589, 45.261864, 53.847801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305313, 44.914574, 53.703514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722880, 0.003414, -0.690965,
		0.601141, -0.496167, 0.626456,
		-0.340695, -0.868221, -0.360721,
		44.203106, 44.654106, 53.595299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972439, 44.907383, 53.788406>,  <44.441589, 45.261864, 53.847801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972439, 44.907383, 53.788406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718021, 44.727112, 53.537857>,  <44.565372, 44.618950, 53.387527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718021, 44.727112, 53.537857>,  <44.972439, 44.907383, 53.788406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718021, 44.727112, 53.537857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703177, -0.004210, -0.711002,
		0.317794, -0.892678, 0.319583,
		-0.636041, -0.450676, -0.626373,
		44.527210, 44.591908, 53.349945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384716, 44.383133, 53.407253>,  <44.972439, 44.907383, 53.788406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384716, 44.383133, 53.407253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049118, 44.402679, 53.190479>,  <44.847759, 44.414406, 53.060413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049118, 44.402679, 53.190479>,  <45.384716, 44.383133, 53.407253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049118, 44.402679, 53.190479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544070, 0.090652, -0.834128,
		0.008369, -0.994683, -0.102642,
		-0.838998, 0.048864, -0.541936,
		44.797417, 44.417339, 53.027897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553684, 44.001621, 52.744453>,  <45.384716, 44.383133, 53.407253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553684, 44.001621, 52.744453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234596, 44.216736, 52.635326>,  <45.043144, 44.345802, 52.569851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234596, 44.216736, 52.635326>,  <45.553684, 44.001621, 52.744453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234596, 44.216736, 52.635326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260247, -0.101092, -0.960235,
		-0.543979, -0.837000, -0.059314,
		-0.797720, 0.537784, -0.272819,
		44.995281, 44.378071, 52.553482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165649, 43.557304, 52.187614>,  <45.553684, 44.001621, 52.744453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165649, 43.557304, 52.187614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089989, 43.948044, 52.147640>,  <45.044594, 44.182487, 52.123657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089989, 43.948044, 52.147640>,  <45.165649, 43.557304, 52.187614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089989, 43.948044, 52.147640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155480, -0.070693, -0.985306,
		-0.969560, -0.201910, -0.138509,
		-0.189152, 0.976849, -0.099934,
		45.033241, 44.241100, 52.117661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833202, 43.626537, 51.540600>,  <45.165649, 43.557304, 52.187614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833202, 43.626537, 51.540600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964443, 43.997978, 51.609943>,  <45.043186, 44.220840, 51.651550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964443, 43.997978, 51.609943>,  <44.833202, 43.626537, 51.540600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964443, 43.997978, 51.609943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031898, 0.172524, -0.984489,
		-0.944105, 0.328538, 0.026985,
		0.328098, 0.928600, 0.173361,
		45.062874, 44.276558, 51.661953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546448, 43.959293, 51.007030>,  <44.833202, 43.626537, 51.540600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546448, 43.959293, 51.007030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817062, 44.221359, 51.141525>,  <44.979431, 44.378601, 51.222221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817062, 44.221359, 51.141525>,  <44.546448, 43.959293, 51.007030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817062, 44.221359, 51.141525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178481, 0.297092, -0.938019,
		-0.714453, 0.694616, 0.084058,
		0.676536, 0.655168, 0.336235,
		45.020023, 44.417912, 51.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393085, 44.659653, 50.706184>,  <44.546448, 43.959293, 51.007030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393085, 44.659653, 50.706184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775291, 44.644119, 50.823128>,  <45.004616, 44.634800, 50.893295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775291, 44.644119, 50.823128>,  <44.393085, 44.659653, 50.706184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775291, 44.644119, 50.823128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284020, 0.388273, -0.876685,
		-0.079473, 0.920726, 0.382031,
		0.955519, -0.038832, 0.292361,
		45.061947, 44.632469, 50.910835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565598, 45.254475, 50.470810>,  <44.393085, 44.659653, 50.706184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565598, 45.254475, 50.470810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909012, 45.056549, 50.524586>,  <45.115059, 44.937794, 50.556850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909012, 45.056549, 50.524586>,  <44.565598, 45.254475, 50.470810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909012, 45.056549, 50.524586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325202, 0.322746, -0.888864,
		0.396431, 0.806843, 0.438004,
		0.858537, -0.494813, 0.134440,
		45.166573, 44.908104, 50.564919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175716, 45.955864, 50.306137>,  <44.565598, 45.254475, 50.470810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175716, 45.955864, 50.306137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879787, 45.873817, 50.049828>,  <43.702229, 45.824589, 49.896042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879787, 45.873817, 50.049828>,  <44.175716, 45.955864, 50.306137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879787, 45.873817, 50.049828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636636, -0.094621, 0.765337,
		-0.217615, 0.974153, -0.060583,
		-0.739823, -0.205118, -0.640772,
		43.657841, 45.812283, 49.857597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584312, 46.406437, 50.422874>,  <44.175716, 45.955864, 50.306137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584312, 46.406437, 50.422874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455254, 46.081696, 50.228230>,  <43.377819, 45.886852, 50.111443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455254, 46.081696, 50.228230>,  <43.584312, 46.406437, 50.422874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455254, 46.081696, 50.228230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777458, -0.065922, 0.625470,
		-0.539869, 0.580128, -0.609913,
		-0.322646, -0.811854, -0.486614,
		43.358459, 45.838139, 50.082245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919853, 46.406311, 50.574596>,  <43.584312, 46.406437, 50.422874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919853, 46.406311, 50.574596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978889, 46.034767, 50.438694>,  <43.014309, 45.811840, 50.357155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978889, 46.034767, 50.438694>,  <42.919853, 46.406311, 50.574596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978889, 46.034767, 50.438694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781866, -0.319950, 0.535085,
		-0.605725, 0.186669, -0.773468,
		0.147587, -0.928863, -0.339752,
		43.023167, 45.756107, 50.336769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280033, 46.204639, 50.203197>,  <42.919853, 46.406311, 50.574596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280033, 46.204639, 50.203197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466228, 45.866173, 50.306988>,  <42.577946, 45.663094, 50.369263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466228, 45.866173, 50.306988>,  <42.280033, 46.204639, 50.203197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466228, 45.866173, 50.306988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795543, -0.271545, 0.541641,
		-0.387858, -0.458551, -0.799561,
		0.465486, -0.846165, 0.259476,
		42.605873, 45.612324, 50.384830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811985, 45.634335, 50.161892>,  <42.280033, 46.204639, 50.203197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811985, 45.634335, 50.161892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090137, 45.481384, 50.405281>,  <42.257027, 45.389614, 50.551315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090137, 45.481384, 50.405281>,  <41.811985, 45.634335, 50.161892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090137, 45.481384, 50.405281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718643, -0.372115, 0.587437,
		0.001804, -0.845767, -0.533550,
		0.695377, -0.382372, 0.608476,
		42.298752, 45.366673, 50.587822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564648, 45.006290, 50.274426>,  <41.811985, 45.634335, 50.161892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564648, 45.006290, 50.274426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804855, 45.104309, 50.578880>,  <41.948982, 45.163120, 50.761551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804855, 45.104309, 50.578880>,  <41.564648, 45.006290, 50.274426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804855, 45.104309, 50.578880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624835, -0.450164, 0.637913,
		0.498951, -0.858666, -0.117223,
		0.600524, 0.245042, 0.761134,
		41.985012, 45.177822, 50.807220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478432, 44.487259, 50.744961>,  <41.564648, 45.006290, 50.274426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478432, 44.487259, 50.744961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661072, 44.757851, 50.976097>,  <41.770657, 44.920204, 51.114777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661072, 44.757851, 50.976097>,  <41.478432, 44.487259, 50.744961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661072, 44.757851, 50.976097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596602, -0.248999, 0.762932,
		0.659986, -0.693094, 0.289894,
		0.456600, 0.676476, 0.577838,
		41.798050, 44.960793, 51.149448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552891, 44.228825, 51.531570>,  <41.478432, 44.487259, 50.744961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552891, 44.228825, 51.531570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563290, 44.628349, 51.548061>,  <41.569527, 44.868065, 51.557957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563290, 44.628349, 51.548061>,  <41.552891, 44.228825, 51.531570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563290, 44.628349, 51.548061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765421, -0.006638, 0.643496,
		0.643005, -0.048280, 0.764339,
		0.025995, 0.998812, 0.041223,
		41.571087, 44.927994, 51.560429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366951, 44.335457, 52.144997>,  <41.552891, 44.228825, 51.531570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366951, 44.335457, 52.144997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308910, 44.715759, 52.035446>,  <41.274086, 44.943939, 51.969715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308910, 44.715759, 52.035446>,  <41.366951, 44.335457, 52.144997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308910, 44.715759, 52.035446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632771, 0.123620, 0.764408,
		0.760621, 0.284220, 0.583673,
		-0.145106, 0.950756, -0.273874,
		41.265377, 45.000988, 51.953285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406124, 44.796585, 52.764996>,  <41.366951, 44.335457, 52.144997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406124, 44.796585, 52.764996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208534, 45.012642, 52.492455>,  <41.089981, 45.142277, 52.328930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208534, 45.012642, 52.492455>,  <41.406124, 44.796585, 52.764996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208534, 45.012642, 52.492455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744668, 0.141711, 0.652217,
		0.448843, 0.829559, 0.332222,
		-0.493973, 0.540138, -0.681352,
		41.060341, 45.174683, 52.288048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153076, 45.407299, 53.090763>,  <41.406124, 44.796585, 52.764996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153076, 45.407299, 53.090763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908028, 45.332947, 52.783482>,  <40.760998, 45.288334, 52.599113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908028, 45.332947, 52.783482>,  <41.153076, 45.407299, 53.090763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908028, 45.332947, 52.783482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790370, 0.147374, 0.594639,
		0.002680, 0.971457, -0.237201,
		-0.612623, -0.185883, -0.768206,
		40.724239, 45.277184, 52.553020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721176, 46.012688, 53.080746>,  <41.153076, 45.407299, 53.090763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721176, 46.012688, 53.080746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516983, 45.723045, 52.895237>,  <40.394466, 45.549259, 52.783932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516983, 45.723045, 52.895237>,  <40.721176, 46.012688, 53.080746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516983, 45.723045, 52.895237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799806, 0.201770, 0.565331,
		-0.315783, 0.659518, -0.682142,
		-0.510481, -0.724103, -0.463771,
		40.363838, 45.505814, 52.756107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059345, 46.265644, 52.851139>,  <40.721176, 46.012688, 53.080746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059345, 46.265644, 52.851139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027748, 45.869850, 52.899612>,  <40.008789, 45.632374, 52.928696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027748, 45.869850, 52.899612>,  <40.059345, 46.265644, 52.851139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027748, 45.869850, 52.899612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764721, 0.138128, 0.629383,
		-0.639502, -0.042956, -0.767588,
		-0.078989, -0.989483, 0.121182,
		40.004051, 45.573006, 52.935966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282784, 46.166885, 52.743790>,  <40.059345, 46.265644, 52.851139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282784, 46.166885, 52.743790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436535, 45.827530, 52.889389>,  <39.528786, 45.623917, 52.976749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436535, 45.827530, 52.889389>,  <39.282784, 46.166885, 52.743790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436535, 45.827530, 52.889389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760484, -0.067455, 0.645843,
		-0.523372, -0.525061, -0.671113,
		0.384377, -0.848387, 0.363997,
		39.551849, 45.573013, 52.998589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.815609, 37.266674, 53.832062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834908, 37.658157, 53.752262>,  <40.846489, 37.893047, 53.704380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834908, 37.658157, 53.752262>,  <40.815609, 37.266674, 53.832062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834908, 37.658157, 53.752262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302685, -0.204668, -0.930856,
		-0.951869, -0.015474, -0.306115,
		0.048248, 0.978709, -0.199501,
		40.849380, 37.951771, 53.692413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513454, 37.283600, 53.256824>,  <40.815609, 37.266674, 53.832062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513454, 37.283600, 53.256824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726391, 37.621651, 53.276318>,  <40.854153, 37.824482, 53.288013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726391, 37.621651, 53.276318>,  <40.513454, 37.283600, 53.256824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726391, 37.621651, 53.276318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296659, -0.132325, -0.945771,
		-0.792847, 0.517931, -0.321156,
		0.532342, 0.845126, 0.048736,
		40.886093, 37.875187, 53.290939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472744, 37.564041, 52.612766>,  <40.513454, 37.283600, 53.256824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472744, 37.564041, 52.612766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.791809, 37.752617, 52.763222>,  <40.983246, 37.865765, 52.853497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.791809, 37.752617, 52.763222>,  <40.472744, 37.564041, 52.612766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791809, 37.752617, 52.763222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438320, -0.024772, -0.898478,
		-0.414264, 0.881548, -0.226402,
		0.797660, 0.471443, 0.376138,
		41.031109, 37.894051, 52.876064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645645, 38.033234, 52.090824>,  <40.472744, 37.564041, 52.612766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645645, 38.033234, 52.090824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.963299, 38.000725, 52.331738>,  <41.153893, 37.981220, 52.476284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.963299, 38.000725, 52.331738>,  <40.645645, 38.033234, 52.090824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963299, 38.000725, 52.331738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607717, 0.115110, -0.785767,
		-0.005469, 0.990023, 0.140802,
		0.794134, -0.081270, 0.602284,
		41.201538, 37.976345, 52.512424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068474, 38.624447, 51.959320>,  <40.645645, 38.033234, 52.090824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068474, 38.624447, 51.959320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.336800, 38.369415, 52.110851>,  <41.497795, 38.216396, 52.201771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.336800, 38.369415, 52.110851>,  <41.068474, 38.624447, 51.959320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336800, 38.369415, 52.110851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612568, 0.188398, -0.767637,
		0.418057, 0.746996, 0.516938,
		0.670812, -0.637576, 0.378825,
		41.538044, 38.178143, 52.224499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706207, 39.048241, 51.945412>,  <41.068474, 38.624447, 51.959320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706207, 39.048241, 51.945412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.825977, 38.667549, 51.972401>,  <41.897839, 38.439133, 51.988594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.825977, 38.667549, 51.972401>,  <41.706207, 39.048241, 51.945412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825977, 38.667549, 51.972401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709300, 0.174737, -0.682906,
		0.638152, 0.252339, 0.727383,
		0.299424, -0.951731, 0.067475,
		41.915806, 38.382030, 51.992641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488487, 39.073486, 51.994701>,  <41.706207, 39.048241, 51.945412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488487, 39.073486, 51.994701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.375107, 38.717415, 51.852020>,  <42.307079, 38.503773, 51.766411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.375107, 38.717415, 51.852020>,  <42.488487, 39.073486, 51.994701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375107, 38.717415, 51.852020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668934, 0.082989, -0.738674,
		0.687155, -0.447987, 0.571948,
		-0.283451, -0.890180, -0.356701,
		42.290070, 38.450359, 51.745010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111759, 38.780865, 51.630871>,  <42.488487, 39.073486, 51.994701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111759, 38.780865, 51.630871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818062, 38.541412, 51.502789>,  <42.641842, 38.397743, 51.425938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818062, 38.541412, 51.502789>,  <43.111759, 38.780865, 51.630871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818062, 38.541412, 51.502789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436028, -0.054304, -0.898293,
		0.520354, -0.799185, 0.300890,
		-0.734242, -0.598626, -0.320210,
		42.597790, 38.361824, 51.406727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441105, 38.095470, 51.304253>,  <43.111759, 38.780865, 51.630871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441105, 38.095470, 51.304253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.073025, 38.170013, 51.166553>,  <42.852177, 38.214741, 51.083935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.073025, 38.170013, 51.166553>,  <43.441105, 38.095470, 51.304253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073025, 38.170013, 51.166553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353886, 0.020129, -0.935072,
		-0.167330, -0.982275, -0.084473,
		-0.920199, 0.186359, -0.344245,
		42.796967, 38.225922, 51.063278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457966, 37.767670, 50.731026>,  <43.441105, 38.095470, 51.304253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457966, 37.767670, 50.731026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131134, 37.987793, 50.662281>,  <42.935036, 38.119865, 50.621033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131134, 37.987793, 50.662281>,  <43.457966, 37.767670, 50.731026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131134, 37.987793, 50.662281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232144, 0.041177, -0.971809,
		-0.527719, -0.833945, -0.161396,
		-0.817081, 0.550309, -0.171865,
		42.886009, 38.152885, 50.610722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006916, 37.420029, 50.157982>,  <43.457966, 37.767670, 50.731026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006916, 37.420029, 50.157982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.897072, 37.804527, 50.148201>,  <42.831165, 38.035225, 50.142334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.897072, 37.804527, 50.148201>,  <43.006916, 37.420029, 50.157982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897072, 37.804527, 50.148201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146860, 0.016798, -0.989015,
		-0.950274, -0.275185, -0.145781,
		-0.274611, 0.961244, -0.024451,
		42.814690, 38.092899, 50.140865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569897, 37.531807, 49.513817>,  <43.006916, 37.420029, 50.157982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569897, 37.531807, 49.513817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.682304, 37.902679, 49.612900>,  <42.749748, 38.125202, 49.672352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.682304, 37.902679, 49.612900>,  <42.569897, 37.531807, 49.513817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682304, 37.902679, 49.612900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151011, 0.212177, -0.965493,
		-0.947747, 0.308728, -0.080389,
		0.281018, 0.927183, 0.247711,
		42.766609, 38.180836, 49.687214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370239, 37.925949, 48.982201>,  <42.569897, 37.531807, 49.513817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370239, 37.925949, 48.982201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.660606, 38.142181, 49.152294>,  <42.834827, 38.271919, 49.254349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.660606, 38.142181, 49.152294>,  <42.370239, 37.925949, 48.982201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660606, 38.142181, 49.152294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430114, 0.125653, -0.893987,
		-0.536703, 0.831857, -0.141297,
		0.725915, 0.540579, 0.425232,
		42.878380, 38.304356, 49.279865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426392, 38.545250, 48.541367>,  <42.370239, 37.925949, 48.982201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426392, 38.545250, 48.541367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.754398, 38.545914, 48.770302>,  <42.951202, 38.546310, 48.907665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.754398, 38.545914, 48.770302>,  <42.426392, 38.545250, 48.541367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754398, 38.545914, 48.770302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538843, 0.334863, -0.772991,
		-0.192937, 0.942266, 0.273699,
		0.820015, 0.001658, 0.572340,
		43.000404, 38.546410, 48.942005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121311, 39.232784, 48.712444>,  <42.426392, 38.545250, 48.541367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121311, 39.232784, 48.712444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.777451, 39.322456, 48.528816>,  <41.571136, 39.376259, 48.418640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.777451, 39.322456, 48.528816>,  <42.121311, 39.232784, 48.712444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777451, 39.322456, 48.528816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472274, -0.006021, 0.881431,
		0.194836, 0.974529, 0.111051,
		-0.859649, 0.224181, -0.459072,
		41.519554, 39.389709, 48.391094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770760, 39.628185, 49.193882>,  <42.121311, 39.232784, 48.712444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770760, 39.628185, 49.193882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.466011, 39.516167, 48.960258>,  <41.283161, 39.448956, 48.820084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.466011, 39.516167, 48.960258>,  <41.770760, 39.628185, 49.193882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466011, 39.516167, 48.960258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613606, 0.023265, 0.789269,
		-0.207442, 0.959705, -0.189562,
		-0.761876, -0.280044, -0.584055,
		41.237450, 39.432152, 48.785042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318451, 39.965454, 49.449097>,  <41.770760, 39.628185, 49.193882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318451, 39.965454, 49.449097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.118973, 39.686745, 49.242870>,  <40.999287, 39.519520, 49.119133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.118973, 39.686745, 49.242870>,  <41.318451, 39.965454, 49.449097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118973, 39.686745, 49.242870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556958, -0.198167, 0.806553,
		-0.664151, 0.689377, -0.289246,
		-0.498700, -0.696770, -0.515567,
		40.969364, 39.477715, 49.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712742, 40.169147, 49.562763>,  <41.318451, 39.965454, 49.449097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712742, 40.169147, 49.562763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683327, 39.778976, 49.479683>,  <40.665676, 39.544876, 49.429836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683327, 39.778976, 49.479683>,  <40.712742, 40.169147, 49.562763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683327, 39.778976, 49.479683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553609, -0.133298, 0.822039,
		-0.829523, 0.175435, -0.530202,
		-0.073540, -0.975425, -0.207697,
		40.661266, 39.486347, 49.417374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142052, 40.047092, 49.816025>,  <40.712742, 40.169147, 49.562763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142052, 40.047092, 49.816025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275356, 39.673332, 49.765682>,  <40.355339, 39.449078, 49.735477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275356, 39.673332, 49.765682>,  <40.142052, 40.047092, 49.816025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275356, 39.673332, 49.765682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669810, -0.328582, 0.665875,
		-0.663547, -0.137605, -0.735371,
		0.333257, -0.934398, -0.125861,
		40.375332, 39.393013, 49.727924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562828, 39.604469, 49.412277>,  <40.142052, 40.047092, 49.816025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562828, 39.604469, 49.412277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.785240, 39.396179, 49.671406>,  <39.918690, 39.271206, 49.826881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.785240, 39.396179, 49.671406>,  <39.562828, 39.604469, 49.412277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785240, 39.396179, 49.671406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786124, -0.076401, 0.613329,
		-0.269880, -0.850300, -0.451835,
		0.556034, -0.520724, 0.647822,
		39.952049, 39.239964, 49.865753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027149, 39.264557, 49.897190>,  <39.562828, 39.604469, 49.412277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027149, 39.264557, 49.897190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377182, 39.197037, 50.078621>,  <39.587200, 39.156525, 50.187481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377182, 39.197037, 50.078621>,  <39.027149, 39.264557, 49.897190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377182, 39.197037, 50.078621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477766, -0.151676, 0.865294,
		-0.077268, -0.973909, -0.213378,
		0.875083, -0.168805, 0.453581,
		39.639706, 39.146397, 50.214695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813736, 38.731895, 50.346134>,  <39.027149, 39.264557, 49.897190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813736, 38.731895, 50.346134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.153599, 38.889679, 50.486122>,  <39.357517, 38.984348, 50.570114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.153599, 38.889679, 50.486122>,  <38.813736, 38.731895, 50.346134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153599, 38.889679, 50.486122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294565, -0.195430, 0.935435,
		0.437388, -0.897890, -0.049855,
		0.849661, 0.394462, 0.349966,
		39.408497, 39.008018, 50.591110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054897, 38.253052, 50.864388>,  <38.813736, 38.731895, 50.346134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054897, 38.253052, 50.864388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245979, 38.588112, 50.970325>,  <39.360630, 38.789146, 51.033886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245979, 38.588112, 50.970325>,  <39.054897, 38.253052, 50.864388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245979, 38.588112, 50.970325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247656, -0.160836, 0.955405,
		0.842890, -0.521992, 0.130617,
		0.477706, 0.837649, 0.264841,
		39.389290, 38.839405, 51.049778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395313, 38.089844, 51.509102>,  <39.054897, 38.253052, 50.864388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395313, 38.089844, 51.509102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346031, 38.486557, 51.495316>,  <39.316463, 38.724586, 51.487045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346031, 38.486557, 51.495316>,  <39.395313, 38.089844, 51.509102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346031, 38.486557, 51.495316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312730, -0.005845, 0.949824,
		0.941818, 0.127799, 0.310880,
		-0.123204, 0.991783, -0.034462,
		39.309071, 38.784092, 51.484978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620457, 38.422417, 52.143452>,  <39.395313, 38.089844, 51.509102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620457, 38.422417, 52.143452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346024, 38.659523, 51.974728>,  <39.181366, 38.801788, 51.873493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346024, 38.659523, 51.974728>,  <39.620457, 38.422417, 52.143452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346024, 38.659523, 51.974728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468118, 0.084145, 0.879650,
		0.556920, 0.800967, 0.219754,
		-0.686080, 0.592766, -0.421809,
		39.140198, 38.837353, 51.848186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673260, 38.901348, 52.479870>,  <39.620457, 38.422417, 52.143452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673260, 38.901348, 52.479870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299248, 38.957832, 52.349770>,  <39.074841, 38.991722, 52.271709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299248, 38.957832, 52.349770>,  <39.673260, 38.901348, 52.479870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299248, 38.957832, 52.349770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303234, 0.156984, 0.939896,
		0.183782, 0.977454, -0.103965,
		-0.935026, 0.141210, -0.325248,
		39.018742, 39.000195, 52.252193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407375, 39.481838, 52.888229>,  <39.673260, 38.901348, 52.479870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407375, 39.481838, 52.888229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078453, 39.315437, 52.732922>,  <38.881100, 39.215599, 52.639736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078453, 39.315437, 52.732922>,  <39.407375, 39.481838, 52.888229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078453, 39.315437, 52.732922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534264, 0.329536, 0.778439,
		-0.195881, 0.847556, -0.493234,
		-0.822309, -0.415999, -0.388269,
		38.831760, 39.190639, 52.616440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805317, 40.026844, 52.868217>,  <39.407375, 39.481838, 52.888229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805317, 40.026844, 52.868217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654827, 39.656303, 52.861092>,  <38.564533, 39.433979, 52.856815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654827, 39.656303, 52.861092>,  <38.805317, 40.026844, 52.868217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654827, 39.656303, 52.861092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535938, 0.201900, 0.819761,
		-0.755794, 0.317963, -0.572429,
		-0.376227, -0.926356, -0.017814,
		38.541958, 39.378395, 52.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280407, 40.312912, 52.315559>,  <38.805317, 40.026844, 52.868217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280407, 40.312912, 52.315559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321121, 40.706268, 52.375675>,  <38.345551, 40.942280, 52.411743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321121, 40.706268, 52.375675>,  <38.280407, 40.312912, 52.315559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321121, 40.706268, 52.375675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749845, 0.023433, -0.661199,
		-0.653737, 0.179995, -0.735003,
		0.101789, 0.983388, 0.150287,
		38.351658, 41.001286, 52.420761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263885, 40.647148, 51.709839>,  <38.280407, 40.312912, 52.315559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263885, 40.647148, 51.709839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.438316, 40.921478, 51.942902>,  <38.542973, 41.086075, 52.082737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.438316, 40.921478, 51.942902>,  <38.263885, 40.647148, 51.709839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438316, 40.921478, 51.942902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511744, 0.343594, -0.787440,
		-0.740242, 0.641550, -0.201134,
		0.436074, 0.685825, 0.582652,
		38.569138, 41.127224, 52.117699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251240, 41.110973, 51.288567>,  <38.263885, 40.647148, 51.709839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251240, 41.110973, 51.288567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533432, 41.201889, 51.557087>,  <38.702747, 41.256439, 51.718197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533432, 41.201889, 51.557087>,  <38.251240, 41.110973, 51.288567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533432, 41.201889, 51.557087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597939, 0.317621, -0.735925,
		-0.380483, 0.920575, 0.088173,
		0.705480, 0.227285, 0.671297,
		38.745075, 41.270073, 51.758476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503853, 41.771828, 51.110668>,  <38.251240, 41.110973, 51.288567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503853, 41.771828, 51.110668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787865, 41.644203, 51.361763>,  <38.958271, 41.567631, 51.512421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787865, 41.644203, 51.361763>,  <38.503853, 41.771828, 51.110668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787865, 41.644203, 51.361763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678432, 0.548772, -0.488447,
		-0.188644, 0.772692, 0.606103,
		0.710031, -0.319057, 0.627741,
		39.000874, 41.548485, 51.550087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882633, 42.390785, 51.436565>,  <38.503853, 41.771828, 51.110668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882633, 42.390785, 51.436565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.079269, 42.046982, 51.380581>,  <39.197250, 41.840698, 51.346989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.079269, 42.046982, 51.380581>,  <38.882633, 42.390785, 51.436565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079269, 42.046982, 51.380581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738180, 0.496556, -0.456642,
		0.461987, 0.121160, 0.878571,
		0.491587, -0.859507, -0.139965,
		39.226746, 41.789131, 51.338593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504192, 42.595009, 51.472099>,  <38.882633, 42.390785, 51.436565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504192, 42.595009, 51.472099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.565689, 42.238441, 51.301575>,  <39.602589, 42.024502, 51.199261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.565689, 42.238441, 51.301575>,  <39.504192, 42.595009, 51.472099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565689, 42.238441, 51.301575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632223, 0.420312, -0.650870,
		0.759379, -0.169457, 0.628194,
		0.153743, -0.891416, -0.426311,
		39.611813, 41.971016, 51.173683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217922, 42.442345, 51.525879>,  <39.504192, 42.595009, 51.472099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217922, 42.442345, 51.525879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082939, 42.204536, 51.233940>,  <40.001949, 42.061852, 51.058777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082939, 42.204536, 51.233940>,  <40.217922, 42.442345, 51.525879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082939, 42.204536, 51.233940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705652, 0.353392, -0.614141,
		0.623038, -0.722264, 0.300266,
		-0.337461, -0.594516, -0.729843,
		39.981701, 42.026180, 51.014988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866867, 42.187008, 51.233665>,  <40.217922, 42.442345, 51.525879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866867, 42.187008, 51.233665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.584167, 42.104568, 50.962955>,  <40.414547, 42.055103, 50.800529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.584167, 42.104568, 50.962955>,  <40.866867, 42.187008, 51.233665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584167, 42.104568, 50.962955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564654, 0.412008, -0.715133,
		0.426233, -0.887564, -0.174805,
		-0.706747, -0.206109, -0.676778,
		40.372143, 42.042736, 50.759922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270596, 42.055843, 50.620747>,  <40.866867, 42.187008, 51.233665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270596, 42.055843, 50.620747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897842, 42.092941, 50.480465>,  <40.674191, 42.115200, 50.396297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897842, 42.092941, 50.480465>,  <41.270596, 42.055843, 50.620747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897842, 42.092941, 50.480465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361766, 0.309226, -0.879491,
		0.026875, -0.946455, -0.321716,
		-0.931882, 0.092750, -0.350705,
		40.618279, 42.120766, 50.375252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211506, 41.730026, 50.056808>,  <41.270596, 42.055843, 50.620747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211506, 41.730026, 50.056808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.930710, 42.014656, 50.044975>,  <40.762234, 42.185432, 50.037876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.930710, 42.014656, 50.044975>,  <41.211506, 41.730026, 50.056808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930710, 42.014656, 50.044975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392812, 0.352202, -0.849501,
		-0.594065, -0.607959, -0.526756,
		-0.701987, 0.711575, -0.029583,
		40.720112, 42.228130, 50.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003147, 41.688183, 49.432217>,  <41.211506, 41.730026, 50.056808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003147, 41.688183, 49.432217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.857971, 42.043182, 49.545792>,  <40.770866, 42.256184, 49.613937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.857971, 42.043182, 49.545792>,  <41.003147, 41.688183, 49.432217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857971, 42.043182, 49.545792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319926, 0.404873, -0.856578,
		-0.875170, -0.220047, -0.430879,
		-0.362938, 0.887501, 0.283934,
		40.749088, 42.309433, 49.630970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817291, 41.928967, 48.817432>,  <41.003147, 41.688183, 49.432217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817291, 41.928967, 48.817432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878311, 42.236214, 49.066181>,  <40.914925, 42.420563, 49.215431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878311, 42.236214, 49.066181>,  <40.817291, 41.928967, 48.817432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878311, 42.236214, 49.066181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444937, 0.508483, -0.737208,
		-0.882473, 0.389158, -0.264192,
		0.152553, 0.768115, 0.621873,
		40.924076, 42.466648, 49.252743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619694, 42.477318, 48.405903>,  <40.817291, 41.928967, 48.817432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619694, 42.477318, 48.405903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842155, 42.649025, 48.690559>,  <40.975632, 42.752048, 48.861351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842155, 42.649025, 48.690559>,  <40.619694, 42.477318, 48.405903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842155, 42.649025, 48.690559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454803, 0.559483, -0.692917,
		-0.695594, 0.709020, 0.115925,
		0.556150, 0.429266, 0.711638,
		41.008999, 42.777805, 48.904049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598148, 43.254932, 48.269760>,  <40.619694, 42.477318, 48.405903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598148, 43.254932, 48.269760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926579, 43.182022, 48.486130>,  <41.123638, 43.138275, 48.615952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926579, 43.182022, 48.486130>,  <40.598148, 43.254932, 48.269760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926579, 43.182022, 48.486130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553636, 0.485041, -0.676921,
		-0.138984, 0.855283, 0.499173,
		0.821079, -0.182279, 0.540928,
		41.172901, 43.127338, 48.648407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.671589, 45.604427, 52.842598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976543, 45.449684, 53.050098>,  <39.159515, 45.356838, 53.174599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976543, 45.449684, 53.050098>,  <38.671589, 45.604427, 52.842598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976543, 45.449684, 53.050098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629617, -0.258249, 0.732728,
		-0.149495, -0.885239, -0.440459,
		0.762387, -0.386859, 0.518754,
		39.205261, 45.333626, 53.205723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374031, 44.978516, 53.114124>,  <38.671589, 45.604427, 52.842598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374031, 44.978516, 53.114124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668079, 45.112495, 53.349888>,  <38.844509, 45.192883, 53.491348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668079, 45.112495, 53.349888>,  <38.374031, 44.978516, 53.114124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668079, 45.112495, 53.349888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538798, -0.239010, 0.807819,
		0.411455, -0.911417, 0.004771,
		0.735120, 0.334952, 0.589412,
		38.888615, 45.212982, 53.526711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525841, 44.450672, 53.668449>,  <38.374031, 44.978516, 53.114124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525841, 44.450672, 53.668449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.628468, 44.803802, 53.825825>,  <38.690044, 45.015682, 53.920250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.628468, 44.803802, 53.825825>,  <38.525841, 44.450672, 53.668449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628468, 44.803802, 53.825825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387387, -0.279012, 0.878683,
		0.885498, -0.377852, 0.270410,
		0.256564, 0.882825, 0.393439,
		38.705437, 45.068649, 53.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397972, 44.210140, 54.290028>,  <38.525841, 44.450672, 53.668449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397972, 44.210140, 54.290028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487873, 44.599129, 54.314644>,  <38.541813, 44.832523, 54.329414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487873, 44.599129, 54.314644>,  <38.397972, 44.210140, 54.290028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487873, 44.599129, 54.314644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404998, 0.035782, 0.913617,
		0.886265, -0.230258, 0.401890,
		0.224748, 0.972472, 0.061542,
		38.555298, 44.890869, 54.333107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766468, 44.272961, 54.951145>,  <38.397972, 44.210140, 54.290028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766468, 44.272961, 54.951145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680916, 44.658165, 54.885586>,  <38.629585, 44.889286, 54.846249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680916, 44.658165, 54.885586>,  <38.766468, 44.272961, 54.951145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680916, 44.658165, 54.885586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264890, 0.104317, 0.958619,
		0.940259, 0.248449, 0.232780,
		-0.213885, 0.963011, -0.163897,
		38.616749, 44.947067, 54.836418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102486, 44.825134, 55.347878>,  <38.766468, 44.272961, 54.951145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102486, 44.825134, 55.347878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756992, 45.007133, 55.261208>,  <38.549698, 45.116333, 55.209206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756992, 45.007133, 55.261208>,  <39.102486, 44.825134, 55.347878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756992, 45.007133, 55.261208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249231, -0.011974, 0.968370,
		0.438009, 0.890414, 0.123741,
		-0.863732, 0.454995, -0.216674,
		38.497871, 45.143631, 55.196205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957153, 45.207542, 55.972912>,  <39.102486, 44.825134, 55.347878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957153, 45.207542, 55.972912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607674, 45.232109, 55.779884>,  <38.397984, 45.246849, 55.664070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607674, 45.232109, 55.779884>,  <38.957153, 45.207542, 55.972912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607674, 45.232109, 55.779884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486283, -0.083623, 0.869791,
		0.013070, 0.994603, 0.102930,
		-0.873703, 0.061421, -0.482566,
		38.345562, 45.250534, 55.635113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585762, 45.750576, 56.296944>,  <38.957153, 45.207542, 55.972912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585762, 45.750576, 56.296944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313263, 45.523026, 56.112648>,  <38.149765, 45.386494, 56.002071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313263, 45.523026, 56.112648>,  <38.585762, 45.750576, 56.296944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313263, 45.523026, 56.112648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520583, -0.066021, 0.851255,
		-0.514678, 0.819768, -0.251171,
		-0.681249, -0.568878, -0.460737,
		38.108887, 45.352364, 55.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930218, 45.954811, 56.615993>,  <38.585762, 45.750576, 56.296944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930218, 45.954811, 56.615993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868435, 45.592636, 56.457844>,  <37.831364, 45.375332, 56.362953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868435, 45.592636, 56.457844>,  <37.930218, 45.954811, 56.615993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868435, 45.592636, 56.457844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489318, -0.277542, 0.826763,
		-0.858318, 0.321165, -0.400180,
		-0.154460, -0.905441, -0.395371,
		37.822098, 45.321003, 56.339233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232986, 45.873142, 56.660347>,  <37.930218, 45.954811, 56.615993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232986, 45.873142, 56.660347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.352432, 45.493660, 56.618805>,  <37.424099, 45.265972, 56.593880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.352432, 45.493660, 56.618805>,  <37.232986, 45.873142, 56.660347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352432, 45.493660, 56.618805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589279, -0.268885, 0.761873,
		-0.750720, -0.166303, -0.639346,
		0.298612, -0.948707, -0.103858,
		37.442017, 45.209049, 56.587646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644516, 45.552723, 56.712734>,  <37.232986, 45.873142, 56.660347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644516, 45.552723, 56.712734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.927948, 45.286201, 56.805656>,  <37.098007, 45.126289, 56.861408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.927948, 45.286201, 56.805656>,  <36.644516, 45.552723, 56.712734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927948, 45.286201, 56.805656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540145, -0.300327, 0.786160,
		-0.454052, -0.682530, -0.572703,
		0.708576, -0.666301, 0.232301,
		37.140522, 45.086311, 56.875347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251438, 45.001251, 56.885326>,  <36.644516, 45.552723, 56.712734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251438, 45.001251, 56.885326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611687, 44.954994, 57.052902>,  <36.827835, 44.927238, 57.153446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611687, 44.954994, 57.052902>,  <36.251438, 45.001251, 56.885326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611687, 44.954994, 57.052902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434525, -0.257946, 0.862932,
		0.008271, -0.959214, -0.282561,
		0.900622, -0.115642, 0.418936,
		36.881874, 44.920300, 57.178581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442059, 44.283627, 57.075245>,  <36.251438, 45.001251, 56.885326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442059, 44.283627, 57.075245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596985, 44.583031, 57.290546>,  <36.689941, 44.762672, 57.419727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596985, 44.583031, 57.290546>,  <36.442059, 44.283627, 57.075245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596985, 44.583031, 57.290546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519886, -0.304825, 0.797998,
		0.761384, -0.588907, 0.271077,
		0.387315, 0.748512, 0.538253,
		36.713181, 44.807583, 57.452023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888374, 43.953949, 57.677635>,  <36.442059, 44.283627, 57.075245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888374, 43.953949, 57.677635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.732208, 44.319710, 57.720428>,  <36.638508, 44.539165, 57.746105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.732208, 44.319710, 57.720428>,  <36.888374, 43.953949, 57.677635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732208, 44.319710, 57.720428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500038, -0.308187, 0.809310,
		0.773005, 0.262472, 0.577557,
		-0.390417, 0.914401, 0.106985,
		36.615082, 44.594028, 57.752525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779938, 43.312946, 57.393295>,  <36.888374, 43.953949, 57.677635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779938, 43.312946, 57.393295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474861, 43.058159, 57.348434>,  <36.291817, 42.905285, 57.321518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474861, 43.058159, 57.348434>,  <36.779938, 43.312946, 57.393295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474861, 43.058159, 57.348434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399603, -0.327742, -0.856098,
		0.508550, -0.697752, 0.504499,
		-0.762689, -0.636968, -0.112151,
		36.246056, 42.867069, 57.314789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144855, 42.706638, 57.245323>,  <36.779938, 43.312946, 57.393295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144855, 42.706638, 57.245323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763222, 42.656639, 57.136436>,  <36.534241, 42.626640, 57.071106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763222, 42.656639, 57.136436>,  <37.144855, 42.706638, 57.245323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763222, 42.656639, 57.136436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299524, -0.408239, -0.862338,
		-0.003336, -0.904276, 0.426934,
		-0.954083, -0.125000, -0.272214,
		36.476997, 42.619141, 57.054771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117573, 41.998917, 56.968273>,  <37.144855, 42.706638, 57.245323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117573, 41.998917, 56.968273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.812565, 42.219261, 56.832558>,  <36.629562, 42.351467, 56.751129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.812565, 42.219261, 56.832558>,  <37.117573, 41.998917, 56.968273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812565, 42.219261, 56.832558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053253, -0.469205, -0.881482,
		-0.644773, -0.690213, 0.328441,
		-0.762517, 0.550865, -0.339287,
		36.583809, 42.384521, 56.730770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588032, 41.498528, 56.756008>,  <37.117573, 41.998917, 56.968273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588032, 41.498528, 56.756008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518921, 41.847534, 56.573204>,  <36.477455, 42.056938, 56.463524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518921, 41.847534, 56.573204>,  <36.588032, 41.498528, 56.756008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518921, 41.847534, 56.573204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013909, -0.466101, -0.884622,
		-0.984864, -0.146482, 0.092665,
		-0.172773, 0.872521, -0.457009,
		36.467091, 42.109291, 56.436100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053932, 41.350494, 56.208305>,  <36.588032, 41.498528, 56.756008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053932, 41.350494, 56.208305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218124, 41.697975, 56.097412>,  <36.316639, 41.906464, 56.030876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218124, 41.697975, 56.097412>,  <36.053932, 41.350494, 56.208305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218124, 41.697975, 56.097412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203466, -0.383613, -0.900801,
		-0.888879, 0.313356, -0.334218,
		0.410481, 0.868706, -0.277228,
		36.341270, 41.958588, 56.014244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807972, 41.459831, 55.528427>,  <36.053932, 41.350494, 56.208305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807972, 41.459831, 55.528427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133339, 41.690224, 55.560925>,  <36.328560, 41.828457, 55.580421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133339, 41.690224, 55.560925>,  <35.807972, 41.459831, 55.528427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133339, 41.690224, 55.560925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257216, -0.230896, -0.938364,
		-0.521720, 0.784178, -0.335966,
		0.813417, 0.575979, 0.081240,
		36.377365, 41.863018, 55.585297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841938, 41.834785, 54.950703>,  <35.807972, 41.459831, 55.528427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841938, 41.834785, 54.950703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226738, 41.863754, 55.056015>,  <36.457619, 41.881134, 55.119202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226738, 41.863754, 55.056015>,  <35.841938, 41.834785, 54.950703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226738, 41.863754, 55.056015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262378, 0.021898, -0.964717,
		-0.075629, 0.997134, 0.002065,
		0.961997, 0.072419, 0.263282,
		36.515339, 41.885479, 55.134998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159409, 42.304810, 54.448437>,  <35.841938, 41.834785, 54.950703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159409, 42.304810, 54.448437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469582, 42.122566, 54.623306>,  <36.655685, 42.013222, 54.728230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469582, 42.122566, 54.623306>,  <36.159409, 42.304810, 54.448437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469582, 42.122566, 54.623306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462271, -0.062005, -0.884568,
		0.430123, 0.888018, 0.162533,
		0.775435, -0.455608, 0.437175,
		36.702213, 41.985886, 54.754459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796631, 42.661552, 53.958080>,  <36.159409, 42.304810, 54.448437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796631, 42.661552, 53.958080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886803, 42.315910, 54.138081>,  <36.940907, 42.108524, 54.246082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886803, 42.315910, 54.138081>,  <36.796631, 42.661552, 53.958080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886803, 42.315910, 54.138081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389587, -0.343400, -0.854575,
		0.892974, 0.367965, 0.259230,
		0.225434, -0.864106, 0.450001,
		36.954433, 42.056679, 54.273083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559296, 42.622871, 53.868214>,  <36.796631, 42.661552, 53.958080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559296, 42.622871, 53.868214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.452774, 42.255615, 53.985584>,  <37.388863, 42.035259, 54.056007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.452774, 42.255615, 53.985584>,  <37.559296, 42.622871, 53.868214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452774, 42.255615, 53.985584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627564, -0.396209, -0.670210,
		0.731606, 0.005665, 0.681705,
		-0.266301, -0.918143, 0.293424,
		37.372883, 41.980171, 54.073612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161110, 42.270565, 54.031441>,  <37.559296, 42.622871, 53.868214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161110, 42.270565, 54.031441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889416, 41.994263, 53.932255>,  <37.726398, 41.828480, 53.872742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889416, 41.994263, 53.932255>,  <38.161110, 42.270565, 54.031441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889416, 41.994263, 53.932255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646271, -0.402829, -0.648122,
		0.347807, -0.600484, 0.720034,
		-0.679238, -0.690758, -0.247969,
		37.685646, 41.787037, 53.857864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523552, 41.746288, 54.124699>,  <38.161110, 42.270565, 54.031441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523552, 41.746288, 54.124699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223389, 41.656090, 53.876171>,  <38.043289, 41.601971, 53.727055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223389, 41.656090, 53.876171>,  <38.523552, 41.746288, 54.124699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223389, 41.656090, 53.876171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659985, -0.306990, -0.685694,
		-0.036113, -0.924611, 0.379196,
		-0.750410, -0.225502, -0.621316,
		37.998264, 41.588440, 53.689777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703365, 41.086742, 53.783108>,  <38.523552, 41.746288, 54.124699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703365, 41.086742, 53.783108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409973, 41.210617, 53.541080>,  <38.233940, 41.284943, 53.395863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409973, 41.210617, 53.541080>,  <38.703365, 41.086742, 53.783108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409973, 41.210617, 53.541080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514687, -0.328396, -0.791993,
		-0.443969, -0.892330, 0.081481,
		-0.733477, 0.309683, -0.605068,
		38.189930, 41.303520, 53.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647346, 40.583527, 53.341965>,  <38.703365, 41.086742, 53.783108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647346, 40.583527, 53.341965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475250, 40.896332, 53.161587>,  <38.371990, 41.084015, 53.053360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475250, 40.896332, 53.161587>,  <38.647346, 40.583527, 53.341965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475250, 40.896332, 53.161587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351694, -0.314864, -0.881574,
		-0.831385, -0.537887, -0.139559,
		-0.430245, 0.782009, -0.450945,
		38.346176, 41.130936, 53.026302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176434, 40.122192, 53.182495>,  <38.647346, 40.583527, 53.341965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176434, 40.122192, 53.182495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229076, 39.726067, 53.200226>,  <38.260662, 39.488392, 53.210865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229076, 39.726067, 53.200226>,  <38.176434, 40.122192, 53.182495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229076, 39.726067, 53.200226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439160, -0.018155, 0.898225,
		-0.888717, -0.137683, -0.437294,
		0.131609, -0.990310, 0.044330,
		38.268559, 39.428974, 53.213524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504734, 39.857864, 53.410206>,  <38.176434, 40.122192, 53.182495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504734, 39.857864, 53.410206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780334, 39.578529, 53.487774>,  <37.945694, 39.410931, 53.534317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780334, 39.578529, 53.487774>,  <37.504734, 39.857864, 53.410206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780334, 39.578529, 53.487774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315477, -0.048086, 0.947714,
		-0.652497, -0.714154, -0.253440,
		0.689001, -0.698335, 0.193923,
		37.987034, 39.369030, 53.545952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180622, 39.404411, 53.815224>,  <37.504734, 39.857864, 53.410206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180622, 39.404411, 53.815224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562119, 39.314316, 53.894859>,  <37.791016, 39.260258, 53.942642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562119, 39.314316, 53.894859>,  <37.180622, 39.404411, 53.815224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562119, 39.314316, 53.894859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209470, -0.022902, 0.977547,
		-0.215625, -0.974034, -0.069024,
		0.953744, -0.225242, 0.199093,
		37.848240, 39.246742, 53.954586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089317, 38.938385, 54.344650>,  <37.180622, 39.404411, 53.815224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089317, 38.938385, 54.344650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462769, 39.081184, 54.356552>,  <37.686840, 39.166862, 54.363693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462769, 39.081184, 54.356552>,  <37.089317, 38.938385, 54.344650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462769, 39.081184, 54.356552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016311, -0.040601, 0.999042,
		0.357864, -0.933222, -0.032084,
		0.933632, 0.356998, 0.029752,
		37.742859, 39.188282, 54.365479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458321, 38.388420, 54.721859>,  <37.089317, 38.938385, 54.344650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458321, 38.388420, 54.721859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685944, 38.717033, 54.736076>,  <37.822517, 38.914200, 54.744606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685944, 38.717033, 54.736076>,  <37.458321, 38.388420, 54.721859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685944, 38.717033, 54.736076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026431, -0.061477, 0.997758,
		0.821875, -0.566840, -0.056698,
		0.569055, 0.821531, 0.035544,
		37.856659, 38.963493, 54.746738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003860, 38.280266, 55.183540>,  <37.458321, 38.388420, 54.721859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003860, 38.280266, 55.183540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969841, 38.678810, 55.181080>,  <37.949429, 38.917934, 55.179604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969841, 38.678810, 55.181080>,  <38.003860, 38.280266, 55.183540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969841, 38.678810, 55.181080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001598, 0.006037, 0.999981,
		0.996376, 0.085055, 0.001078,
		-0.085046, 0.996358, -0.006151,
		37.944328, 38.977718, 55.179234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399105, 38.464970, 55.832745>,  <38.003860, 38.280266, 55.183540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399105, 38.464970, 55.832745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178005, 38.786362, 55.744297>,  <38.045345, 38.979195, 55.691227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178005, 38.786362, 55.744297>,  <38.399105, 38.464970, 55.832745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178005, 38.786362, 55.744297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166363, 0.153611, 0.974026,
		0.816573, 0.575179, 0.048760,
		-0.552749, 0.803475, -0.221124,
		38.012180, 39.027405, 55.677959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094734, 38.783840, 55.818913>,  <38.399105, 38.464970, 55.832745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094734, 38.783840, 55.818913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421322, 38.642570, 56.001621>,  <39.617275, 38.557808, 56.111248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421322, 38.642570, 56.001621>,  <39.094734, 38.783840, 55.818913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421322, 38.642570, 56.001621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404100, -0.215525, -0.888961,
		0.412405, 0.910394, -0.033252,
		0.816472, -0.353175, 0.456773,
		39.666264, 38.536617, 56.138653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592884, 39.211170, 55.660103>,  <39.094734, 38.783840, 55.818913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592884, 39.211170, 55.660103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.827084, 38.901329, 55.755760>,  <39.967602, 38.715424, 55.813156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.827084, 38.901329, 55.755760>,  <39.592884, 39.211170, 55.660103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827084, 38.901329, 55.755760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489571, 0.102722, -0.865892,
		0.646153, 0.624056, 0.439365,
		0.585497, -0.774599, 0.239145,
		40.002731, 38.668949, 55.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183163, 39.429302, 55.400219>,  <39.592884, 39.211170, 55.660103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183163, 39.429302, 55.400219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228230, 39.033905, 55.440598>,  <40.255272, 38.796665, 55.464825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228230, 39.033905, 55.440598>,  <40.183163, 39.429302, 55.400219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228230, 39.033905, 55.440598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497330, -0.031847, -0.866977,
		0.860214, 0.147884, 0.488018,
		0.112670, -0.988492, 0.100942,
		40.262032, 38.737358, 55.470879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898773, 39.259357, 55.387321>,  <40.183163, 39.429302, 55.400219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898773, 39.259357, 55.387321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.720177, 38.912743, 55.298096>,  <40.613018, 38.704773, 55.244560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.720177, 38.912743, 55.298096>,  <40.898773, 39.259357, 55.387321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720177, 38.912743, 55.298096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561909, -0.077532, -0.823558,
		0.696348, -0.493056, 0.521532,
		-0.446495, -0.866536, -0.223063,
		40.586227, 38.652782, 55.231178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350975, 38.849129, 55.049553>,  <40.898773, 39.259357, 55.387321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350975, 38.849129, 55.049553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.025742, 38.642662, 54.941879>,  <40.830601, 38.518784, 54.877274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.025742, 38.642662, 54.941879>,  <41.350975, 38.849129, 55.049553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025742, 38.642662, 54.941879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391331, -0.142293, -0.909182,
		0.430988, -0.844584, 0.317689,
		-0.813086, -0.516168, -0.269186,
		40.781815, 38.487812, 54.861122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585350, 38.215675, 54.758568>,  <41.350975, 38.849129, 55.049553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585350, 38.215675, 54.758568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.221260, 38.288506, 54.609795>,  <41.002804, 38.332203, 54.520531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.221260, 38.288506, 54.609795>,  <41.585350, 38.215675, 54.758568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221260, 38.288506, 54.609795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309986, -0.295944, -0.903507,
		-0.274575, -0.937692, 0.212937,
		-0.910229, 0.182073, -0.371930,
		40.948193, 38.343128, 54.498215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330757, 37.602535, 54.466469>,  <41.585350, 38.215675, 54.758568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330757, 37.602535, 54.466469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.122749, 37.897659, 54.294323>,  <40.997944, 38.074734, 54.191036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.122749, 37.897659, 54.294323>,  <41.330757, 37.602535, 54.466469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122749, 37.897659, 54.294323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224120, -0.368334, -0.902275,
		-0.824225, -0.565657, 0.026185,
		-0.520023, 0.737809, -0.430364,
		40.966743, 38.119003, 54.165215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.994213, 43.468174, 58.150986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843060, 43.765778, 57.930569>,  <38.752369, 43.944340, 57.798317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843060, 43.765778, 57.930569>,  <38.994213, 43.468174, 58.150986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843060, 43.765778, 57.930569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809318, -0.023626, -0.586896,
		-0.449677, -0.667747, -0.593215,
		-0.377883, 0.744013, -0.551044,
		38.729694, 43.988983, 57.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994518, 43.172710, 57.528938>,  <38.994213, 43.468174, 58.150986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994518, 43.172710, 57.528938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982178, 43.567924, 57.468491>,  <38.974773, 43.805054, 57.432220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982178, 43.567924, 57.468491>,  <38.994518, 43.172710, 57.528938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982178, 43.567924, 57.468491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699249, -0.086698, -0.709601,
		-0.714212, -0.127562, -0.688207,
		-0.030852, 0.988034, -0.151118,
		38.972923, 43.864334, 57.423157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056553, 43.215820, 56.826012>,  <38.994518, 43.172710, 57.528938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056553, 43.215820, 56.826012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.130745, 43.595604, 56.927299>,  <39.175259, 43.823475, 56.988071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.130745, 43.595604, 56.927299>,  <39.056553, 43.215820, 56.826012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130745, 43.595604, 56.927299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621297, 0.086335, -0.778804,
		-0.761307, 0.301776, -0.573884,
		0.185479, 0.949462, 0.253220,
		39.186390, 43.880444, 57.003265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198593, 43.518982, 56.241684>,  <39.056553, 43.215820, 56.826012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198593, 43.518982, 56.241684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.329948, 43.799217, 56.495087>,  <39.408764, 43.967358, 56.647129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.329948, 43.799217, 56.495087>,  <39.198593, 43.518982, 56.241684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329948, 43.799217, 56.495087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803752, 0.145019, -0.577020,
		-0.496126, 0.698670, -0.515479,
		0.328392, 0.700593, 0.633505,
		39.428467, 44.009396, 56.685139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452347, 44.118721, 55.861961>,  <39.198593, 43.518982, 56.241684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452347, 44.118721, 55.861961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634838, 44.177498, 56.213020>,  <39.744335, 44.212765, 56.423656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634838, 44.177498, 56.213020>,  <39.452347, 44.118721, 55.861961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634838, 44.177498, 56.213020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830407, 0.284159, -0.479248,
		-0.319811, 0.947451, 0.007624,
		0.456230, 0.146938, 0.877646,
		39.771706, 44.221581, 56.476315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837978, 44.939339, 55.858967>,  <39.452347, 44.118721, 55.861961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837978, 44.939339, 55.858967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985996, 44.674927, 56.120075>,  <40.074806, 44.516281, 56.276741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985996, 44.674927, 56.120075>,  <39.837978, 44.939339, 55.858967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985996, 44.674927, 56.120075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922959, 0.181496, -0.339421,
		0.105893, 0.728079, 0.677265,
		0.370046, -0.661030, 0.652768,
		40.097012, 44.476616, 56.315907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390644, 45.298653, 56.214931>,  <39.837978, 44.939339, 55.858967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390644, 45.298653, 56.214931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481869, 44.913849, 56.274963>,  <40.536606, 44.682968, 56.310982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481869, 44.913849, 56.274963>,  <40.390644, 45.298653, 56.214931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481869, 44.913849, 56.274963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868097, 0.131112, -0.478766,
		0.440901, 0.239471, 0.865020,
		0.228065, -0.962010, 0.150077,
		40.550289, 44.625244, 56.319984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041142, 45.238831, 56.505924>,  <40.390644, 45.298653, 56.214931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041142, 45.238831, 56.505924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.982491, 44.882729, 56.333443>,  <40.947300, 44.669067, 56.229954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.982491, 44.882729, 56.333443>,  <41.041142, 45.238831, 56.505924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982491, 44.882729, 56.333443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910193, 0.049275, -0.411243,
		0.387361, -0.452782, 0.803082,
		-0.146631, -0.890259, -0.431206,
		40.938499, 44.615650, 56.204082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689857, 44.927719, 56.606087>,  <41.041142, 45.238831, 56.505924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689857, 44.927719, 56.606087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.500481, 44.736977, 56.309853>,  <41.386856, 44.622532, 56.132114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.500481, 44.736977, 56.309853>,  <41.689857, 44.927719, 56.606087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500481, 44.736977, 56.309853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846509, -0.013927, -0.532193,
		0.243462, -0.878874, 0.410253,
		-0.473444, -0.476851, -0.740583,
		41.358448, 44.593922, 56.087677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199577, 44.546669, 56.435074>,  <41.689857, 44.927719, 56.606087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199577, 44.546669, 56.435074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.960079, 44.518738, 56.115917>,  <41.816380, 44.501980, 55.924423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.960079, 44.518738, 56.115917>,  <42.199577, 44.546669, 56.435074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960079, 44.518738, 56.115917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797902, -0.138722, -0.586607,
		-0.069722, -0.987867, 0.138777,
		-0.598741, -0.069831, -0.797893,
		41.780457, 44.497787, 55.876549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259453, 43.838360, 56.071682>,  <42.199577, 44.546669, 56.435074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259453, 43.838360, 56.071682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.143753, 44.115150, 55.807106>,  <42.074333, 44.281227, 55.648361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.143753, 44.115150, 55.807106>,  <42.259453, 43.838360, 56.071682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143753, 44.115150, 55.807106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825414, -0.169642, -0.538435,
		-0.484793, -0.701703, -0.522100,
		-0.289251, 0.691979, -0.661437,
		42.056976, 44.322742, 55.608673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307671, 43.509403, 55.545128>,  <42.259453, 43.838360, 56.071682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307671, 43.509403, 55.545128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301613, 43.884232, 55.405602>,  <42.297977, 44.109127, 55.321884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301613, 43.884232, 55.405602>,  <42.307671, 43.509403, 55.545128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301613, 43.884232, 55.405602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782968, -0.205856, -0.587014,
		-0.621878, -0.282002, -0.730577,
		-0.015145, 0.937069, -0.348816,
		42.297070, 44.165352, 55.300957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017765, 42.927891, 55.115784>,  <42.307671, 43.509403, 55.545128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017765, 42.927891, 55.115784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.089264, 42.539169, 55.054283>,  <42.132164, 42.305935, 55.017384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.089264, 42.539169, 55.054283>,  <42.017765, 42.927891, 55.115784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089264, 42.539169, 55.054283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454781, -0.220175, 0.862958,
		-0.872482, -0.084329, -0.481316,
		0.178746, -0.971808, -0.153747,
		42.142887, 42.247627, 55.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362267, 42.514236, 55.172028>,  <42.017765, 42.927891, 55.115784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362267, 42.514236, 55.172028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.679817, 42.288727, 55.263172>,  <41.870346, 42.153419, 55.317860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.679817, 42.288727, 55.263172>,  <41.362267, 42.514236, 55.172028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679817, 42.288727, 55.263172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442867, -0.279263, 0.851986,
		-0.416695, -0.777283, -0.471377,
		0.793873, -0.563777, 0.227865,
		41.917980, 42.119595, 55.331532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013081, 42.021683, 55.462410>,  <41.362267, 42.514236, 55.172028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013081, 42.021683, 55.462410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.392998, 41.963402, 55.573166>,  <41.620949, 41.928432, 55.639618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.392998, 41.963402, 55.573166>,  <41.013081, 42.021683, 55.462410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392998, 41.963402, 55.573166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312288, -0.496150, 0.810130,
		0.019342, -0.855924, -0.516740,
		0.949791, -0.145702, 0.276891,
		41.677937, 41.919693, 55.656235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987598, 41.303703, 55.531059>,  <41.013081, 42.021683, 55.462410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987598, 41.303703, 55.531059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.285515, 41.465752, 55.743156>,  <41.464264, 41.562981, 55.870415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.285515, 41.465752, 55.743156>,  <40.987598, 41.303703, 55.531059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285515, 41.465752, 55.743156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303795, -0.501640, 0.809979,
		0.594128, -0.764354, -0.250547,
		0.744795, 0.405117, 0.530246,
		41.508953, 41.587288, 55.902229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247593, 40.840027, 55.991936>,  <40.987598, 41.303703, 55.531059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247593, 40.840027, 55.991936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.423454, 41.146706, 56.179077>,  <41.528973, 41.330711, 56.291363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.423454, 41.146706, 56.179077>,  <41.247593, 40.840027, 55.991936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423454, 41.146706, 56.179077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213455, -0.416779, 0.883590,
		0.872434, -0.488339, -0.019584,
		0.439654, 0.766694, 0.467851,
		41.555351, 41.376713, 56.319431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823795, 40.627075, 56.397331>,  <41.247593, 40.840027, 55.991936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823795, 40.627075, 56.397331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717968, 40.969864, 56.574242>,  <41.654472, 41.175537, 56.680389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717968, 40.969864, 56.574242>,  <41.823795, 40.627075, 56.397331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717968, 40.969864, 56.574242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185553, -0.495288, 0.848682,
		0.946348, 0.142469, 0.290050,
		-0.264569, 0.856967, 0.442279,
		41.638596, 41.226955, 56.706924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235977, 40.583553, 57.048504>,  <41.823795, 40.627075, 56.397331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235977, 40.583553, 57.048504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913227, 40.815781, 57.092125>,  <41.719578, 40.955116, 57.118298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913227, 40.815781, 57.092125>,  <42.235977, 40.583553, 57.048504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913227, 40.815781, 57.092125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064244, -0.269766, 0.960780,
		0.587217, 0.768224, 0.254965,
		-0.806876, 0.580567, 0.109057,
		41.671165, 40.989952, 57.124844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319447, 40.936562, 57.654816>,  <42.235977, 40.583553, 57.048504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319447, 40.936562, 57.654816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.929649, 40.980606, 57.576599>,  <41.695770, 41.007034, 57.529671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.929649, 40.980606, 57.576599>,  <42.319447, 40.936562, 57.654816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929649, 40.980606, 57.576599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207907, -0.115028, 0.971362,
		0.084470, 0.987240, 0.134988,
		-0.974495, 0.110115, -0.195537,
		41.637302, 41.013641, 57.517937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125599, 41.449654, 58.204468>,  <42.319447, 40.936562, 57.654816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125599, 41.449654, 58.204468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.807884, 41.245102, 58.073257>,  <41.617256, 41.122372, 57.994530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.807884, 41.245102, 58.073257>,  <42.125599, 41.449654, 58.204468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807884, 41.245102, 58.073257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216625, -0.266058, 0.939301,
		-0.567617, 0.817130, 0.100547,
		-0.794282, -0.511382, -0.328030,
		41.569599, 41.091686, 57.974850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588898, 41.646484, 58.669495>,  <42.125599, 41.449654, 58.204468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588898, 41.646484, 58.669495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438854, 41.309074, 58.515736>,  <41.348827, 41.106628, 58.423481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438854, 41.309074, 58.515736>,  <41.588898, 41.646484, 58.669495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438854, 41.309074, 58.515736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472100, -0.183034, 0.862334,
		-0.797755, 0.504947, -0.329568,
		-0.375111, -0.843521, -0.384402,
		41.326321, 41.056019, 58.400414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960999, 41.555325, 58.921131>,  <41.588898, 41.646484, 58.669495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960999, 41.555325, 58.921131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.062958, 41.191658, 58.789413>,  <41.124134, 40.973457, 58.710384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.062958, 41.191658, 58.789413>,  <40.960999, 41.555325, 58.921131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062958, 41.191658, 58.789413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627261, -0.414640, 0.659255,
		-0.735913, 0.038509, -0.675980,
		0.254901, -0.909170, -0.329294,
		41.139427, 40.918907, 58.690624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302731, 41.135323, 58.782513>,  <40.960999, 41.555325, 58.921131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302731, 41.135323, 58.782513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622116, 40.902214, 58.842964>,  <40.813747, 40.762348, 58.879234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622116, 40.902214, 58.842964>,  <40.302731, 41.135323, 58.782513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622116, 40.902214, 58.842964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506102, -0.513771, 0.692749,
		-0.326066, -0.629620, -0.705167,
		0.798462, -0.582768, 0.151128,
		40.861656, 40.727383, 58.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052452, 40.542736, 58.967323>,  <40.302731, 41.135323, 58.782513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052452, 40.542736, 58.967323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433308, 40.502052, 59.082626>,  <40.661819, 40.477642, 59.151806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433308, 40.502052, 59.082626>,  <40.052452, 40.542736, 58.967323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433308, 40.502052, 59.082626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302364, -0.451773, 0.839331,
		0.044858, -0.886316, -0.460903,
		0.952137, -0.101710, 0.288255,
		40.718948, 40.471539, 59.169102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000370, 40.004688, 59.409149>,  <40.052452, 40.542736, 58.967323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000370, 40.004688, 59.409149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369190, 40.126007, 59.505341>,  <40.590485, 40.198799, 59.563053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369190, 40.126007, 59.505341>,  <40.000370, 40.004688, 59.409149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369190, 40.126007, 59.505341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108929, -0.392844, 0.913131,
		0.371420, -0.868150, -0.329185,
		0.922053, 0.303297, 0.240477,
		40.645805, 40.216995, 59.577484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196556, 39.319405, 59.262280>,  <40.000370, 40.004688, 59.409149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196556, 39.319405, 59.262280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858078, 39.127823, 59.168846>,  <39.654991, 39.012875, 59.112785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858078, 39.127823, 59.168846>,  <40.196556, 39.319405, 59.262280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858078, 39.127823, 59.168846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293851, -0.053736, -0.954340,
		0.444535, -0.876193, 0.186212,
		-0.846192, -0.478956, -0.233582,
		39.604221, 38.984135, 59.098770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331345, 38.635174, 58.913044>,  <40.196556, 39.319405, 59.262280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331345, 38.635174, 58.913044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.960442, 38.705154, 58.780632>,  <39.737900, 38.747143, 58.701183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.960442, 38.705154, 58.780632>,  <40.331345, 38.635174, 58.913044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960442, 38.705154, 58.780632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311284, -0.131110, -0.941229,
		-0.208074, -0.975808, 0.067112,
		-0.927258, 0.174955, -0.331034,
		39.682262, 38.757641, 58.681320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213142, 38.089149, 58.441437>,  <40.331345, 38.635174, 58.913044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213142, 38.089149, 58.441437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.940498, 38.369217, 58.356426>,  <39.776913, 38.537258, 58.305420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.940498, 38.369217, 58.356426>,  <40.213142, 38.089149, 58.441437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940498, 38.369217, 58.356426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054200, -0.241339, -0.968926,
		-0.729702, -0.671953, 0.126551,
		-0.681614, 0.700168, -0.212525,
		39.736015, 38.579266, 58.292667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910496, 37.808788, 57.934311>,  <40.213142, 38.089149, 58.441437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910496, 37.808788, 57.934311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774544, 38.181213, 57.881248>,  <39.692974, 38.404671, 57.849411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774544, 38.181213, 57.881248>,  <39.910496, 37.808788, 57.934311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774544, 38.181213, 57.881248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017022, -0.134936, -0.990708,
		-0.940315, -0.338978, 0.030014,
		-0.339878, 0.931067, -0.132653,
		39.672581, 38.460533, 57.841454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493198, 37.723774, 57.431591>,  <39.910496, 37.808788, 57.934311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493198, 37.723774, 57.431591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558548, 38.118141, 57.417355>,  <39.597759, 38.354763, 57.408813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558548, 38.118141, 57.417355>,  <39.493198, 37.723774, 57.431591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558548, 38.118141, 57.417355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045726, -0.028469, -0.998548,
		-0.985503, 0.164768, 0.040431,
		0.163378, 0.985921, -0.035591,
		39.607563, 38.413918, 57.406677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956104, 38.083164, 57.072178>,  <39.493198, 37.723774, 57.431591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956104, 38.083164, 57.072178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.287613, 38.306099, 57.052155>,  <39.486519, 38.439861, 57.040142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.287613, 38.306099, 57.052155>,  <38.956104, 38.083164, 57.072178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287613, 38.306099, 57.052155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012341, -0.107630, -0.994114,
		-0.559447, 0.823279, -0.096079,
		0.828774, 0.557340, -0.050054,
		39.536243, 38.473301, 57.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758671, 38.544708, 56.459747>,  <38.956104, 38.083164, 57.072178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758671, 38.544708, 56.459747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153156, 38.522697, 56.522171>,  <39.389847, 38.509491, 56.559628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153156, 38.522697, 56.522171>,  <38.758671, 38.544708, 56.459747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153156, 38.522697, 56.522171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158341, 0.039797, -0.986582,
		0.048074, 0.997692, 0.047961,
		0.986213, -0.055023, 0.156062,
		39.449020, 38.506191, 56.568989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715618, 39.287987, 56.205254>,  <38.758671, 38.544708, 56.459747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715618, 39.287987, 56.205254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.330700, 39.319374, 56.101078>,  <38.099751, 39.338207, 56.038570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.330700, 39.319374, 56.101078>,  <38.715618, 39.287987, 56.205254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330700, 39.319374, 56.101078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216308, 0.359765, 0.907623,
		0.164919, 0.929738, -0.329226,
		-0.962295, 0.078471, -0.260442,
		38.042011, 39.342915, 56.022945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634293, 39.826054, 56.513298>,  <38.715618, 39.287987, 56.205254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634293, 39.826054, 56.513298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266266, 39.682045, 56.451515>,  <38.045448, 39.595642, 56.414444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266266, 39.682045, 56.451515>,  <38.634293, 39.826054, 56.513298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266266, 39.682045, 56.451515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270136, 0.297509, 0.915704,
		-0.283718, 0.884237, -0.370984,
		-0.920071, -0.360018, -0.154456,
		37.990246, 39.574039, 56.405178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173721, 40.387024, 56.600471>,  <38.634293, 39.826054, 56.513298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173721, 40.387024, 56.600471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.968483, 40.047638, 56.652397>,  <37.845341, 39.844006, 56.683552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.968483, 40.047638, 56.652397>,  <38.173721, 40.387024, 56.600471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968483, 40.047638, 56.652397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341446, 0.340516, 0.876050,
		-0.787496, 0.405171, -0.464420,
		-0.513093, -0.848460, 0.129811,
		37.814556, 39.793098, 56.691341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563480, 40.616001, 56.774155>,  <38.173721, 40.387024, 56.600471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563480, 40.616001, 56.774155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534016, 40.230690, 56.877441>,  <37.516335, 39.999504, 56.939415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534016, 40.230690, 56.877441>,  <37.563480, 40.616001, 56.774155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534016, 40.230690, 56.877441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439261, 0.263793, 0.858757,
		-0.895334, -0.050166, -0.442561,
		-0.073664, -0.963274, 0.258219,
		37.511917, 39.941708, 56.954906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903942, 40.581383, 56.967880>,  <37.563480, 40.616001, 56.774155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903942, 40.581383, 56.967880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048588, 40.246941, 57.132889>,  <37.135376, 40.046276, 57.231892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048588, 40.246941, 57.132889>,  <36.903942, 40.581383, 56.967880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048588, 40.246941, 57.132889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501810, 0.198361, 0.841926,
		-0.785763, -0.511456, -0.347835,
		0.361611, -0.836101, 0.412519,
		37.157070, 39.996109, 57.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348610, 40.331871, 57.212212>,  <36.903942, 40.581383, 56.967880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348610, 40.331871, 57.212212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.640945, 40.142578, 57.408958>,  <36.816345, 40.029003, 57.527004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.640945, 40.142578, 57.408958>,  <36.348610, 40.331871, 57.212212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640945, 40.142578, 57.408958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510655, 0.099053, 0.854061,
		-0.452888, -0.875352, -0.169266,
		0.730838, -0.473230, 0.491863,
		36.860195, 40.000610, 57.556519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031555, 39.651894, 57.457909>,  <36.348610, 40.331871, 57.212212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031555, 39.651894, 57.457909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329704, 39.786110, 57.688328>,  <36.508595, 39.866638, 57.826580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329704, 39.786110, 57.688328>,  <36.031555, 39.651894, 57.457909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329704, 39.786110, 57.688328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611726, 0.000806, 0.791069,
		0.264972, -0.942025, 0.205860,
		0.745373, 0.335541, 0.576048,
		36.553318, 39.886772, 57.861141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816696, 39.400917, 58.057919>,  <36.031555, 39.651894, 57.457909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816696, 39.400917, 58.057919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.096619, 39.663506, 58.170578>,  <36.264572, 39.821056, 58.238174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.096619, 39.663506, 58.170578>,  <35.816696, 39.400917, 58.057919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096619, 39.663506, 58.170578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507803, 0.179873, 0.842486,
		0.502405, -0.732595, 0.459232,
		0.699804, 0.656469, 0.281645,
		36.306561, 39.860447, 58.255070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883846, 39.324123, 58.766499>,  <35.816696, 39.400917, 58.057919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883846, 39.324123, 58.766499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973888, 39.692795, 58.640106>,  <36.027916, 39.913998, 58.564270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973888, 39.692795, 58.640106>,  <35.883846, 39.324123, 58.766499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973888, 39.692795, 58.640106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657514, 0.383026, 0.648820,
		0.719028, 0.061704, 0.692236,
		0.225110, 0.921674, -0.315977,
		36.041420, 39.969296, 58.545315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.823227, 41.001781, 44.556507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.778595, 41.366219, 44.715229>,  <43.751816, 41.584881, 44.810463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.778595, 41.366219, 44.715229>,  <43.823227, 41.001781, 44.556507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778595, 41.366219, 44.715229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741071, -0.342324, 0.577605,
		0.662090, -0.229613, 0.713383,
		-0.111583, 0.911094, 0.396808,
		43.745121, 41.639545, 44.834270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098362, 40.997696, 45.237286>,  <43.823227, 41.001781, 44.556507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098362, 40.997696, 45.237286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.798683, 41.257355, 45.184669>,  <43.618874, 41.413151, 45.153099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.798683, 41.257355, 45.184669>,  <44.098362, 40.997696, 45.237286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798683, 41.257355, 45.184669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470610, -0.381973, 0.795375,
		0.466072, 0.657801, 0.591671,
		-0.749201, 0.649149, -0.131541,
		43.573921, 41.452099, 45.145206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875519, 41.319920, 45.922234>,  <44.098362, 40.997696, 45.237286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875519, 41.319920, 45.922234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.548019, 41.363380, 45.696724>,  <43.351521, 41.389458, 45.561417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.548019, 41.363380, 45.696724>,  <43.875519, 41.319920, 45.922234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548019, 41.363380, 45.696724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565553, -0.321904, 0.759294,
		-0.098980, 0.940517, 0.325010,
		-0.818751, 0.108655, -0.563774,
		43.302395, 41.395977, 45.527592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338501, 41.648884, 46.420929>,  <43.875519, 41.319920, 45.922234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338501, 41.648884, 46.420929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.135330, 41.513992, 46.103870>,  <43.013428, 41.433056, 45.913635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.135330, 41.513992, 46.103870>,  <43.338501, 41.648884, 46.420929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135330, 41.513992, 46.103870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691597, -0.388916, 0.608636,
		-0.513526, 0.857332, -0.035690,
		-0.507922, -0.337233, -0.792647,
		42.982952, 41.412823, 45.866077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620747, 41.880180, 46.525318>,  <43.338501, 41.648884, 46.420929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620747, 41.880180, 46.525318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.615200, 41.566780, 46.276825>,  <42.611874, 41.378738, 46.127728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.615200, 41.566780, 46.276825>,  <42.620747, 41.880180, 46.525318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615200, 41.566780, 46.276825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574033, -0.502473, 0.646535,
		-0.818715, 0.365572, -0.442790,
		-0.013865, -0.783503, -0.621233,
		42.611042, 41.331730, 46.090454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943569, 41.627403, 46.438305>,  <42.620747, 41.880180, 46.525318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943569, 41.627403, 46.438305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.150074, 41.302116, 46.330864>,  <42.273979, 41.106945, 46.266399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.150074, 41.302116, 46.330864>,  <41.943569, 41.627403, 46.438305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150074, 41.302116, 46.330864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466768, -0.530134, 0.707874,
		-0.718051, -0.240074, -0.653274,
		0.516265, -0.813217, -0.268605,
		42.304955, 41.058151, 46.250282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404957, 41.080658, 46.459274>,  <41.943569, 41.627403, 46.438305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404957, 41.080658, 46.459274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.742691, 40.867157, 46.440479>,  <41.945332, 40.739056, 46.429203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.742691, 40.867157, 46.440479>,  <41.404957, 41.080658, 46.459274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742691, 40.867157, 46.440479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370889, -0.645482, 0.667678,
		-0.386699, -0.546319, -0.742966,
		0.844337, -0.533749, -0.046984,
		41.995991, 40.707031, 46.426384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222263, 40.383999, 46.289040>,  <41.404957, 41.080658, 46.459274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222263, 40.383999, 46.289040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.592785, 40.341560, 46.433651>,  <41.815098, 40.316097, 46.520416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.592785, 40.341560, 46.433651>,  <41.222263, 40.383999, 46.289040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592785, 40.341560, 46.433651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320882, -0.725047, 0.609378,
		0.197472, -0.680478, -0.705659,
		0.926304, -0.106098, 0.361530,
		41.870678, 40.309731, 46.542110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473003, 39.699970, 46.288425>,  <41.222263, 40.383999, 46.289040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473003, 39.699970, 46.288425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.705727, 39.864059, 46.569344>,  <41.845360, 39.962513, 46.737892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.705727, 39.864059, 46.569344>,  <41.473003, 39.699970, 46.288425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705727, 39.864059, 46.569344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337484, -0.663872, 0.667367,
		0.740003, -0.625292, -0.247801,
		0.581807, 0.410225, 0.702293,
		41.880268, 39.987125, 46.780033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681801, 39.130028, 46.683987>,  <41.473003, 39.699970, 46.288425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681801, 39.130028, 46.683987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.754524, 39.462570, 46.894051>,  <41.798157, 39.662094, 47.020088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.754524, 39.462570, 46.894051>,  <41.681801, 39.130028, 46.683987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754524, 39.462570, 46.894051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183233, -0.496062, 0.848733,
		0.966111, -0.250534, 0.062144,
		0.181809, 0.831357, 0.525157,
		41.809067, 39.711979, 47.051598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068443, 38.891575, 47.183678>,  <41.681801, 39.130028, 46.683987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068443, 38.891575, 47.183678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.922089, 39.221794, 47.355534>,  <41.834274, 39.419926, 47.458645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.922089, 39.221794, 47.355534>,  <42.068443, 38.891575, 47.183678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922089, 39.221794, 47.355534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209975, -0.522973, 0.826081,
		0.906661, 0.212042, 0.364696,
		-0.365890, 0.825553, 0.429636,
		41.812321, 39.469460, 47.484425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320164, 38.889519, 47.939560>,  <42.068443, 38.891575, 47.183678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320164, 38.889519, 47.939560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.000111, 39.128922, 47.923691>,  <41.808079, 39.272564, 47.914169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.000111, 39.128922, 47.923691>,  <42.320164, 38.889519, 47.939560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000111, 39.128922, 47.923691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366695, -0.435743, 0.821987,
		0.474678, 0.672249, 0.568122,
		-0.800135, 0.598507, -0.039673,
		41.760071, 39.308472, 47.911789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755112, 39.217701, 48.367310>,  <42.320164, 38.889519, 47.939560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755112, 39.217701, 48.367310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038380, 38.969360, 48.501793>,  <43.208340, 38.820354, 48.582481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038380, 38.969360, 48.501793>,  <42.755112, 39.217701, 48.367310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038380, 38.969360, 48.501793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602731, 0.283619, -0.745839,
		0.367702, 0.730824, 0.575058,
		0.708174, -0.620852, 0.336204,
		43.250832, 38.783104, 48.602654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348610, 39.605038, 48.289371>,  <42.755112, 39.217701, 48.367310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348610, 39.605038, 48.289371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.510574, 39.241676, 48.331039>,  <43.607754, 39.023659, 48.356041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.510574, 39.241676, 48.331039>,  <43.348610, 39.605038, 48.289371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510574, 39.241676, 48.331039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711535, 0.241490, -0.659850,
		0.574254, 0.341298, 0.744142,
		0.404908, -0.908404, 0.104169,
		43.632046, 38.969154, 48.362289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134495, 39.646988, 48.371719>,  <43.348610, 39.605038, 48.289371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134495, 39.646988, 48.371719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.068771, 39.272865, 48.246372>,  <44.029339, 39.048389, 48.171165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.068771, 39.272865, 48.246372>,  <44.134495, 39.646988, 48.371719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068771, 39.272865, 48.246372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721149, 0.102852, -0.685102,
		0.673013, -0.338551, 0.657599,
		-0.164307, -0.935310, -0.313367,
		44.019478, 38.992271, 48.152363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676395, 39.338802, 48.361851>,  <44.134495, 39.646988, 48.371719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676395, 39.338802, 48.361851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.476357, 39.113258, 48.098953>,  <44.356331, 38.977932, 47.941216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.476357, 39.113258, 48.098953>,  <44.676395, 39.338802, 48.361851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476357, 39.113258, 48.098953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778107, 0.040513, -0.626825,
		0.380066, -0.824878, 0.418481,
		-0.500100, -0.563858, -0.657240,
		44.326328, 38.944099, 47.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099541, 38.916676, 48.087139>,  <44.676395, 39.338802, 48.361851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099541, 38.916676, 48.087139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.821430, 38.898857, 47.800194>,  <44.654564, 38.888165, 47.628029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.821430, 38.898857, 47.800194>,  <45.099541, 38.916676, 48.087139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821430, 38.898857, 47.800194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676941, 0.294830, -0.674408,
		0.241540, -0.954511, -0.174835,
		-0.695277, -0.044544, -0.717360,
		44.612846, 38.885494, 47.584984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424976, 38.570301, 47.517994>,  <45.099541, 38.916676, 48.087139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424976, 38.570301, 47.517994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.096237, 38.754158, 47.383354>,  <44.898994, 38.864471, 47.302570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.096237, 38.754158, 47.383354>,  <45.424976, 38.570301, 47.517994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096237, 38.754158, 47.383354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499569, 0.297414, -0.813619,
		-0.273865, -0.836823, -0.474052,
		-0.821845, 0.459643, -0.336600,
		44.849682, 38.892052, 47.282375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630531, 38.498241, 46.832329>,  <45.424976, 38.570301, 47.517994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630531, 38.498241, 46.832329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.343994, 38.775108, 46.867558>,  <45.172070, 38.941227, 46.888695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.343994, 38.775108, 46.867558>,  <45.630531, 38.498241, 46.832329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343994, 38.775108, 46.867558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367969, 0.482003, -0.795155,
		-0.592830, -0.537198, -0.599976,
		-0.716346, 0.692164, 0.088074,
		45.129089, 38.982758, 46.893978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375263, 38.602577, 46.163033>,  <45.630531, 38.498241, 46.832329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375263, 38.602577, 46.163033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.318825, 38.934151, 46.379536>,  <45.284962, 39.133095, 46.509438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.318825, 38.934151, 46.379536>,  <45.375263, 38.602577, 46.163033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318825, 38.934151, 46.379536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332156, 0.554670, -0.762899,
		-0.932612, 0.072140, -0.353597,
		-0.141094, 0.828938, 0.541253,
		45.276497, 39.182831, 46.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020439, 39.061390, 45.738338>,  <45.375263, 38.602577, 46.163033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020439, 39.061390, 45.738338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.182823, 39.308342, 46.007866>,  <45.280254, 39.456512, 46.169582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.182823, 39.308342, 46.007866>,  <45.020439, 39.061390, 45.738338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182823, 39.308342, 46.007866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369190, 0.563680, -0.738894,
		-0.835998, 0.548732, 0.000903,
		0.405964, 0.617380, 0.673821,
		45.304611, 39.493557, 46.210011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890839, 39.769558, 45.485668>,  <45.020439, 39.061390, 45.738338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890839, 39.769558, 45.485668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.192612, 39.781601, 45.747944>,  <45.373676, 39.788826, 45.905308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.192612, 39.781601, 45.747944>,  <44.890839, 39.769558, 45.485668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192612, 39.781601, 45.747944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561705, 0.487210, -0.668666,
		-0.339590, 0.872765, 0.350655,
		0.754431, 0.030108, 0.655689,
		45.418941, 39.790634, 45.944649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152611, 40.501064, 45.464661>,  <44.890839, 39.769558, 45.485668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152611, 40.501064, 45.464661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.444321, 40.294617, 45.644337>,  <45.619347, 40.170750, 45.752144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.444321, 40.294617, 45.644337>,  <45.152611, 40.501064, 45.464661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444321, 40.294617, 45.644337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683756, 0.573827, -0.450777,
		-0.025102, 0.635879, 0.771380,
		0.729279, -0.516120, 0.449191,
		45.663105, 40.139782, 45.779095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636791, 41.025982, 45.710709>,  <45.152611, 40.501064, 45.464661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636791, 41.025982, 45.710709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.835144, 40.681870, 45.663364>,  <45.954155, 40.475403, 45.634956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.835144, 40.681870, 45.663364>,  <45.636791, 41.025982, 45.710709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835144, 40.681870, 45.663364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663914, 0.463443, -0.586889,
		0.559746, 0.212446, 0.800969,
		0.495885, -0.860283, -0.118364,
		45.983910, 40.423786, 45.627853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309765, 41.284603, 45.647869>,  <45.636791, 41.025982, 45.710709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309765, 41.284603, 45.647869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.319885, 40.901161, 45.534428>,  <46.325958, 40.671097, 45.466362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.319885, 40.901161, 45.534428>,  <46.309765, 41.284603, 45.647869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319885, 40.901161, 45.534428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683578, 0.223596, -0.694785,
		0.729439, -0.176290, 0.660939,
		0.025300, -0.958607, -0.283608,
		46.327477, 40.613579, 45.449345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.974461, 41.067886, 45.861336>,  <46.309765, 41.284603, 45.647869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.974461, 41.067886, 45.861336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.817368, 40.864555, 45.554775>,  <46.723110, 40.742558, 45.370838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.817368, 40.864555, 45.554775>,  <46.974461, 41.067886, 45.861336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817368, 40.864555, 45.554775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697427, 0.378592, -0.608493,
		0.599464, -0.773483, 0.205833,
		-0.392732, -0.508323, -0.766400,
		46.699547, 40.712059, 45.324856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455437, 40.572830, 45.476517>,  <46.974461, 41.067886, 45.861336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455437, 40.572830, 45.476517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.168785, 40.753654, 45.264072>,  <46.996792, 40.862148, 45.136604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.168785, 40.753654, 45.264072>,  <47.455437, 40.572830, 45.476517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168785, 40.753654, 45.264072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695935, 0.413298, -0.587247,
		-0.045965, -0.790459, -0.610788,
		-0.716632, 0.452062, -0.531111,
		46.953796, 40.889275, 45.104740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823235, 40.774826, 46.162834>,  <47.455437, 40.572830, 45.476517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823235, 40.774826, 46.162834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.006783, 41.101860, 46.301975>,  <48.116909, 41.298080, 46.385460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.006783, 41.101860, 46.301975>,  <47.823235, 40.774826, 46.162834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.006783, 41.101860, 46.301975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718733, 0.111390, 0.686305,
		0.522365, -0.564933, 0.638737,
		0.458866, 0.817583, 0.347850,
		48.144444, 41.347134, 46.406330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.872459, 40.740734, 46.945942>,  <47.823235, 40.774826, 46.162834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.872459, 40.740734, 46.945942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.880295, 41.128609, 46.848522>,  <47.884995, 41.361336, 46.790070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.880295, 41.128609, 46.848522>,  <47.872459, 40.740734, 46.945942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.880295, 41.128609, 46.848522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724462, 0.181645, 0.664952,
		0.689037, 0.163416, 0.706062,
		0.019588, 0.969691, -0.243549,
		47.886169, 41.419518, 46.775459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844475, 41.058174, 47.639965>,  <47.872459, 40.740734, 46.945942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844475, 41.058174, 47.639965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.747940, 41.345329, 47.378769>,  <47.690018, 41.517624, 47.222054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.747940, 41.345329, 47.378769>,  <47.844475, 41.058174, 47.639965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747940, 41.345329, 47.378769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722869, 0.315951, 0.614521,
		0.647469, 0.620331, 0.442688,
		-0.241338, 0.717889, -0.652987,
		47.675537, 41.560696, 47.182873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.747837, 41.691830, 48.115448>,  <47.844475, 41.058174, 47.639965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.747837, 41.691830, 48.115448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.584206, 41.751495, 47.755360>,  <47.486027, 41.787292, 47.539307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.584206, 41.751495, 47.755360>,  <47.747837, 41.691830, 48.115448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584206, 41.751495, 47.755360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789040, 0.437705, 0.431081,
		0.458334, 0.886659, -0.061362,
		-0.409081, 0.149162, -0.900224,
		47.461483, 41.796246, 47.485291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.451420, 42.376545, 48.078529>,  <47.747837, 41.691830, 48.115448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.451420, 42.376545, 48.078529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.236092, 42.158585, 47.821377>,  <47.106895, 42.027809, 47.667088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.236092, 42.158585, 47.821377>,  <47.451420, 42.376545, 48.078529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236092, 42.158585, 47.821377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842740, 0.348289, 0.410468,
		0.000243, 0.762743, -0.646702,
		-0.538321, -0.544902, -0.642878,
		47.074596, 41.995113, 47.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806255, 42.769825, 48.121929>,  <47.451420, 42.376545, 48.078529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806255, 42.769825, 48.121929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.735649, 42.427567, 47.927315>,  <46.693287, 42.222214, 47.810547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.735649, 42.427567, 47.927315>,  <46.806255, 42.769825, 48.121929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735649, 42.427567, 47.927315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978580, 0.099349, 0.180307,
		-0.105942, 0.507940, -0.854852,
		-0.176514, -0.855644, -0.486535,
		46.682693, 42.170872, 47.781353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264217, 42.944298, 47.689381>,  <46.806255, 42.769825, 48.121929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264217, 42.944298, 47.689381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.262054, 42.545448, 47.719604>,  <46.260757, 42.306137, 47.737740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.262054, 42.545448, 47.719604>,  <46.264217, 42.944298, 47.689381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262054, 42.545448, 47.719604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940318, 0.030779, 0.338904,
		-0.340256, -0.069213, -0.937782,
		-0.005407, -0.997127, 0.075555,
		46.260433, 42.246311, 47.742271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624245, 42.748600, 47.446114>,  <46.264217, 42.944298, 47.689381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624245, 42.748600, 47.446114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.760307, 42.472214, 47.701256>,  <45.841946, 42.306381, 47.854340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.760307, 42.472214, 47.701256>,  <45.624245, 42.748600, 47.446114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760307, 42.472214, 47.701256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903240, -0.051351, 0.426052,
		-0.261633, -0.721062, -0.641575,
		0.340155, -0.690966, 0.637857,
		45.862354, 42.264923, 47.892612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966721, 42.483280, 47.715626>,  <45.624245, 42.748600, 47.446114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966721, 42.483280, 47.715626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.246635, 42.349121, 47.967915>,  <45.414585, 42.268627, 48.119289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.246635, 42.349121, 47.967915>,  <44.966721, 42.483280, 47.715626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246635, 42.349121, 47.967915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656539, 0.046002, 0.752888,
		-0.281533, -0.940952, -0.188011,
		0.699783, -0.335399, 0.630723,
		45.456570, 42.248501, 48.157131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675549, 41.800343, 48.074356>,  <44.966721, 42.483280, 47.715626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675549, 41.800343, 48.074356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.958912, 41.941864, 48.318645>,  <45.128929, 42.026775, 48.465218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.958912, 41.941864, 48.318645>,  <44.675549, 41.800343, 48.074356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958912, 41.941864, 48.318645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626738, -0.082604, 0.774839,
		0.324591, -0.931664, 0.163227,
		0.708407, 0.353806, 0.610722,
		45.171432, 42.048004, 48.501862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512348, 41.478062, 48.622139>,  <44.675549, 41.800343, 48.074356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512348, 41.478062, 48.622139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.735214, 41.774834, 48.771324>,  <44.868935, 41.952896, 48.860836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.735214, 41.774834, 48.771324>,  <44.512348, 41.478062, 48.622139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735214, 41.774834, 48.771324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556790, 0.000565, 0.830653,
		0.616079, -0.670473, 0.413416,
		0.557164, 0.741933, 0.372965,
		44.902363, 41.997414, 48.883213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837132, 41.255775, 49.159477>,  <44.512348, 41.478062, 48.622139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837132, 41.255775, 49.159477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.866528, 41.649048, 49.226349>,  <44.884163, 41.885014, 49.266472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.866528, 41.649048, 49.226349>,  <44.837132, 41.255775, 49.159477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866528, 41.649048, 49.226349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220445, -0.147468, 0.964188,
		0.972627, -0.107707, 0.205901,
		0.073486, 0.983185, 0.167175,
		44.888573, 41.944004, 49.276501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266270, 41.284042, 49.799919>,  <44.837132, 41.255775, 49.159477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266270, 41.284042, 49.799919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.051598, 41.615967, 49.738750>,  <44.922794, 41.815121, 49.702049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.051598, 41.615967, 49.738750>,  <45.266270, 41.284042, 49.799919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051598, 41.615967, 49.738750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250607, 0.016302, 0.967952,
		0.805710, 0.557806, 0.199207,
		-0.536682, 0.829811, -0.152924,
		44.890594, 41.864910, 49.692875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452103, 41.747036, 50.452442>,  <45.266270, 41.284042, 49.799919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452103, 41.747036, 50.452442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.125385, 41.909119, 50.288174>,  <44.929356, 42.006367, 50.189613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.125385, 41.909119, 50.288174>,  <45.452103, 41.747036, 50.452442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125385, 41.909119, 50.288174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409344, 0.094568, 0.907466,
		0.406546, 0.909322, 0.088625,
		-0.816798, 0.405204, -0.410671,
		44.880344, 42.030682, 50.164970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237755, 42.309132, 50.882656>,  <45.452103, 41.747036, 50.452442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237755, 42.309132, 50.882656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.910156, 42.227196, 50.668259>,  <44.713596, 42.178036, 50.539619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.910156, 42.227196, 50.668259>,  <45.237755, 42.309132, 50.882656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910156, 42.227196, 50.668259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564691, 0.121919, 0.816247,
		-0.101849, 0.971174, -0.215519,
		-0.818994, -0.204836, -0.535996,
		44.664459, 42.165745, 50.507462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773323, 42.822330, 51.072952>,  <45.237755, 42.309132, 50.882656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773323, 42.822330, 51.072952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.530525, 42.534950, 50.937080>,  <44.384846, 42.362522, 50.855556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.530525, 42.534950, 50.937080>,  <44.773323, 42.822330, 51.072952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530525, 42.534950, 50.937080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514008, 0.028941, 0.857297,
		-0.606094, 0.694977, -0.386856,
		-0.606998, -0.718449, -0.339682,
		44.348427, 42.319416, 50.835175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175148, 43.011047, 51.230549>,  <44.773323, 42.822330, 51.072952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175148, 43.011047, 51.230549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.133469, 42.617828, 51.170204>,  <44.108463, 42.381897, 51.133999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.133469, 42.617828, 51.170204>,  <44.175148, 43.011047, 51.230549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133469, 42.617828, 51.170204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620855, -0.054207, 0.782049,
		-0.776970, 0.175146, -0.604683,
		-0.104195, -0.983049, -0.150858,
		44.102211, 42.322914, 51.124947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472473, 42.947548, 51.049404>,  <44.175148, 43.011047, 51.230549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472473, 42.947548, 51.049404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.593609, 42.590546, 51.183105>,  <43.666290, 42.376343, 51.263325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.593609, 42.590546, 51.183105>,  <43.472473, 42.947548, 51.049404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593609, 42.590546, 51.183105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633242, 0.073672, 0.770439,
		-0.712245, -0.444982, -0.542861,
		0.302838, -0.892504, 0.334253,
		43.684460, 42.322796, 51.283382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832745, 42.698040, 51.246407>,  <43.472473, 42.947548, 51.049404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832745, 42.698040, 51.246407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.107792, 42.474289, 51.431564>,  <43.272820, 42.340038, 51.542660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.107792, 42.474289, 51.431564>,  <42.832745, 42.698040, 51.246407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107792, 42.474289, 51.431564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599520, -0.077781, 0.796571,
		-0.409581, -0.825254, -0.388843,
		0.687618, -0.559380, 0.462899,
		43.314079, 42.306477, 51.570435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341988, 42.177795, 51.618500>,  <42.832745, 42.698040, 51.246407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341988, 42.177795, 51.618500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.707458, 42.104965, 51.763847>,  <42.926743, 42.061268, 51.851055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.707458, 42.104965, 51.763847>,  <42.341988, 42.177795, 51.618500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707458, 42.104965, 51.763847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405515, -0.348330, 0.845118,
		-0.027303, -0.919519, -0.392097,
		0.913681, -0.182075, 0.363368,
		42.981564, 42.050343, 51.872856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394875, 41.437271, 51.889095>,  <42.341988, 42.177795, 51.618500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394875, 41.437271, 51.889095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.647038, 41.681511, 52.080826>,  <42.798336, 41.828056, 52.195866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.647038, 41.681511, 52.080826>,  <42.394875, 41.437271, 51.889095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647038, 41.681511, 52.080826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432706, -0.236243, 0.870032,
		0.644478, -0.755883, 0.115280,
		0.630408, 0.610598, 0.479328,
		42.836159, 41.864689, 52.224625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575722, 41.113785, 52.581207>,  <42.394875, 41.437271, 51.889095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575722, 41.113785, 52.581207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.729862, 41.478073, 52.640656>,  <42.822346, 41.696648, 52.676323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.729862, 41.478073, 52.640656>,  <42.575722, 41.113785, 52.581207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729862, 41.478073, 52.640656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388956, 0.014259, 0.921146,
		0.836789, -0.412774, 0.359726,
		0.385354, 0.910722, 0.148620,
		42.845467, 41.751289, 52.685242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072731, 41.089485, 53.164158>,  <42.575722, 41.113785, 52.581207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072731, 41.089485, 53.164158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968681, 41.474564, 53.134350>,  <42.906250, 41.705612, 53.116467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968681, 41.474564, 53.134350>,  <43.072731, 41.089485, 53.164158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968681, 41.474564, 53.134350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206627, 0.019888, 0.978217,
		0.943207, 0.269856, 0.193746,
		-0.260124, 0.962695, -0.074518,
		42.890644, 41.763371, 53.111996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411839, 41.535679, 53.663601>,  <43.072731, 41.089485, 53.164158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411839, 41.535679, 53.663601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.072983, 41.725204, 53.567394>,  <42.869667, 41.838921, 53.509670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.072983, 41.725204, 53.567394>,  <43.411839, 41.535679, 53.663601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072983, 41.725204, 53.567394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205919, 0.124538, 0.970612,
		0.489843, 0.871774, -0.007934,
		-0.847143, 0.473814, -0.240519,
		42.818840, 41.867348, 53.495239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365417, 41.900154, 54.263050>,  <43.411839, 41.535679, 53.663601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365417, 41.900154, 54.263050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.023304, 41.967979, 54.067200>,  <42.818035, 42.008675, 53.949692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.023304, 41.967979, 54.067200>,  <43.365417, 41.900154, 54.263050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023304, 41.967979, 54.067200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465552, 0.163356, 0.869814,
		0.227474, 0.971886, -0.060774,
		-0.855288, 0.169566, -0.489623,
		42.766716, 42.018848, 53.920315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238041, 42.572636, 54.457211>,  <43.365417, 41.900154, 54.263050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238041, 42.572636, 54.457211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.917618, 42.361031, 54.345169>,  <42.725365, 42.234066, 54.277943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.917618, 42.361031, 54.345169>,  <43.238041, 42.572636, 54.457211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917618, 42.361031, 54.345169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376897, 0.082205, 0.922600,
		-0.465040, 0.844623, -0.265233,
		-0.801053, -0.529012, -0.280108,
		42.677303, 42.202328, 54.261135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740780, 42.899185, 54.684155>,  <43.238041, 42.572636, 54.457211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740780, 42.899185, 54.684155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582310, 42.534988, 54.636749>,  <42.487228, 42.316471, 54.608307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582310, 42.534988, 54.636749>,  <42.740780, 42.899185, 54.684155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582310, 42.534988, 54.636749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278277, -0.003940, 0.960493,
		-0.874990, 0.413503, -0.251808,
		-0.396175, -0.910494, -0.118516,
		42.463459, 42.261841, 54.601196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222721, 43.438530, 54.486023>,  <42.740780, 42.899185, 54.684155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222721, 43.438530, 54.486023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.303562, 43.812462, 54.602814>,  <42.352066, 44.036819, 54.672890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.303562, 43.812462, 54.602814>,  <42.222721, 43.438530, 54.486023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303562, 43.812462, 54.602814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772304, 0.031205, -0.634486,
		-0.602246, 0.353729, -0.715665,
		0.202103, 0.934827, 0.291979,
		42.364193, 44.092911, 54.690407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097404, 43.912231, 53.962132>,  <42.222721, 43.438530, 54.486023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097404, 43.912231, 53.962132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.374477, 44.082542, 54.194992>,  <42.540722, 44.184731, 54.334709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.374477, 44.082542, 54.194992>,  <42.097404, 43.912231, 53.962132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374477, 44.082542, 54.194992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566035, 0.179296, -0.804647,
		-0.446978, 0.886885, -0.116810,
		0.692686, 0.425778, 0.582150,
		42.582283, 44.210278, 54.369637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451656, 44.395767, 53.563896>,  <42.097404, 43.912231, 53.962132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451656, 44.395767, 53.563896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.719345, 44.341637, 53.856152>,  <42.879959, 44.309158, 54.031506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.719345, 44.341637, 53.856152>,  <42.451656, 44.395767, 53.563896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719345, 44.341637, 53.856152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741872, 0.177288, -0.646680,
		-0.042019, 0.974810, 0.219042,
		0.669224, -0.135328, 0.730634,
		42.920113, 44.301037, 54.075340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937157, 45.025520, 53.553631>,  <42.451656, 44.395767, 53.563896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937157, 45.025520, 53.553631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.162605, 44.770805, 53.764091>,  <43.297874, 44.617977, 53.890369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.162605, 44.770805, 53.764091>,  <42.937157, 45.025520, 53.553631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162605, 44.770805, 53.764091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753371, 0.135045, -0.643580,
		0.338767, 0.759124, 0.555848,
		0.563622, -0.636784, 0.526153,
		43.331692, 44.579769, 53.921936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541389, 45.399151, 53.615158>,  <42.937157, 45.025520, 53.553631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541389, 45.399151, 53.615158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.621849, 45.009605, 53.657341>,  <43.670124, 44.775879, 53.682652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.621849, 45.009605, 53.657341>,  <43.541389, 45.399151, 53.615158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621849, 45.009605, 53.657341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671471, 0.058700, -0.738702,
		0.713208, 0.219398, 0.665732,
		0.201148, -0.973868, 0.105454,
		43.682194, 44.717445, 53.688976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
