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
	<36.376045, 52.983368, 50.096279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154148, 53.288399, 50.229382>,  <36.021008, 53.471416, 50.309242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154148, 53.288399, 50.229382>,  <36.376045, 52.983368, 50.096279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154148, 53.288399, 50.229382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825285, 0.555117, 0.103681,
		-0.105654, 0.332137, -0.937295,
		-0.554745, 0.762581, 0.332758,
		35.987724, 53.517174, 50.329208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319408, 53.599808, 49.610584>,  <36.376045, 52.983368, 50.096279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319408, 53.599808, 49.610584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278439, 53.711830, 49.992386>,  <36.253857, 53.779041, 50.221466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278439, 53.711830, 49.992386>,  <36.319408, 53.599808, 49.610584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278439, 53.711830, 49.992386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841337, 0.536332, -0.067081,
		-0.530718, 0.796190, -0.290551,
		-0.102422, 0.280052, 0.954505,
		36.247711, 53.795845, 50.278736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091972, 54.294376, 49.675598>,  <36.319408, 53.599808, 49.610584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091972, 54.294376, 49.675598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276169, 54.206512, 50.019623>,  <36.386684, 54.153793, 50.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276169, 54.206512, 50.019623>,  <36.091972, 54.294376, 49.675598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276169, 54.206512, 50.019623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818286, 0.480560, -0.315387,
		-0.344032, 0.849006, 0.401038,
		0.460488, -0.219660, 0.860058,
		36.414314, 54.140614, 50.277641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331718, 55.016430, 50.001011>,  <36.091972, 54.294376, 49.675598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331718, 55.016430, 50.001011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548199, 54.682182, 50.038628>,  <36.678085, 54.481632, 50.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548199, 54.682182, 50.038628>,  <36.331718, 55.016430, 50.001011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548199, 54.682182, 50.038628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767161, 0.444856, -0.462134,
		0.344333, 0.322252, 0.881810,
		0.541202, -0.835618, 0.094041,
		36.710560, 54.431496, 50.066841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982475, 55.111530, 50.413750>,  <36.331718, 55.016430, 50.001011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982475, 55.111530, 50.413750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036400, 54.807755, 50.159164>,  <37.068752, 54.625488, 50.006413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036400, 54.807755, 50.159164>,  <36.982475, 55.111530, 50.413750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036400, 54.807755, 50.159164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840139, 0.428158, -0.332938,
		0.525352, -0.489833, 0.695751,
		0.134807, -0.759437, -0.636461,
		37.076843, 54.579922, 49.968227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659870, 54.780457, 50.452312>,  <36.982475, 55.111530, 50.413750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659870, 54.780457, 50.452312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541210, 54.745010, 50.071968>,  <37.470013, 54.723743, 49.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541210, 54.745010, 50.071968>,  <37.659870, 54.780457, 50.452312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541210, 54.745010, 50.071968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922388, 0.231336, -0.309328,
		0.247381, -0.968830, 0.013111,
		-0.296653, -0.088615, -0.950865,
		37.452213, 54.718426, 49.786709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088963, 54.311039, 49.926765>,  <37.659870, 54.780457, 50.452312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088963, 54.311039, 49.926765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933529, 54.628952, 49.740295>,  <37.840271, 54.819702, 49.628414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933529, 54.628952, 49.740295>,  <38.088963, 54.311039, 49.926765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933529, 54.628952, 49.740295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921187, 0.346342, -0.177372,
		0.020483, -0.498358, -0.866729,
		-0.388579, 0.794787, -0.466175,
		37.816956, 54.867390, 49.600441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304134, 54.237209, 49.238815>,  <38.088963, 54.311039, 49.926765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304134, 54.237209, 49.238815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263828, 54.613735, 49.367668>,  <38.239643, 54.839653, 49.444981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263828, 54.613735, 49.367668>,  <38.304134, 54.237209, 49.238815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263828, 54.613735, 49.367668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915729, 0.214333, -0.339855,
		-0.388955, 0.260739, -0.883589,
		-0.100769, 0.941316, 0.322132,
		38.233597, 54.896130, 49.464310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463558, 54.730125, 48.767265>,  <38.304134, 54.237209, 49.238815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463558, 54.730125, 48.767265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528633, 54.917141, 49.114815>,  <38.567677, 55.029350, 49.323345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528633, 54.917141, 49.114815>,  <38.463558, 54.730125, 48.767265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528633, 54.917141, 49.114815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918744, 0.249318, -0.306185,
		-0.359780, 0.848083, -0.388991,
		0.162688, 0.467542, 0.868871,
		38.577438, 55.057404, 49.375477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820766, 55.422791, 48.651077>,  <38.463558, 54.730125, 48.767265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820766, 55.422791, 48.651077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902435, 55.289726, 49.019348>,  <38.951435, 55.209888, 49.240311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902435, 55.289726, 49.019348>,  <38.820766, 55.422791, 48.651077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902435, 55.289726, 49.019348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951251, 0.289504, -0.106345,
		-0.231163, 0.897510, 0.375553,
		0.204170, -0.332662, 0.920679,
		38.963688, 55.189926, 49.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009987, 56.018768, 49.160439>,  <38.820766, 55.422791, 48.651077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009987, 56.018768, 49.160439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156635, 55.663010, 49.269661>,  <39.244625, 55.449554, 49.335194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156635, 55.663010, 49.269661>,  <39.009987, 56.018768, 49.160439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156635, 55.663010, 49.269661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926969, 0.324128, -0.188867,
		0.079472, 0.322359, 0.943276,
		0.366624, -0.889396, 0.273058,
		39.266624, 55.396191, 49.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608170, 56.065063, 49.664692>,  <39.009987, 56.018768, 49.160439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608170, 56.065063, 49.664692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664997, 55.744041, 49.432922>,  <39.699093, 55.551430, 49.293861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664997, 55.744041, 49.432922>,  <39.608170, 56.065063, 49.664692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664997, 55.744041, 49.432922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861191, 0.388808, -0.327381,
		0.488023, -0.452481, 0.746387,
		0.142068, -0.802552, -0.579420,
		39.707619, 55.503277, 49.259098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180119, 56.066475, 49.296028>,  <39.608170, 56.065063, 49.664692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180119, 56.066475, 49.296028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104824, 55.674843, 49.265141>,  <40.059647, 55.439861, 49.246609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104824, 55.674843, 49.265141>,  <40.180119, 56.066475, 49.296028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104824, 55.674843, 49.265141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810793, -0.110549, -0.574799,
		0.554239, -0.170808, 0.814643,
		-0.188238, -0.979083, -0.077220,
		40.048351, 55.381119, 49.241974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824081, 55.696903, 49.477413>,  <40.180119, 56.066475, 49.296028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824081, 55.696903, 49.477413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607384, 55.435631, 49.265800>,  <40.477364, 55.278870, 49.138832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607384, 55.435631, 49.265800>,  <40.824081, 55.696903, 49.477413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607384, 55.435631, 49.265800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805012, -0.222123, -0.550107,
		0.241809, -0.723891, 0.646150,
		-0.541743, -0.653179, -0.529029,
		40.444862, 55.239677, 49.107090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417355, 55.447140, 49.867222>,  <40.824081, 55.696903, 49.477413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417355, 55.447140, 49.867222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482903, 55.420433, 50.260910>,  <41.522232, 55.404408, 50.497124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482903, 55.420433, 50.260910>,  <41.417355, 55.447140, 49.867222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482903, 55.420433, 50.260910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357476, 0.933915, 0.003839,
		-0.919434, 0.351205, 0.176909,
		0.163870, -0.066770, 0.984220,
		41.532063, 55.400402, 50.556175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218800, 56.055103, 50.053520>,  <41.417355, 55.447140, 49.867222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218800, 56.055103, 50.053520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478802, 55.936352, 50.333336>,  <41.634804, 55.865101, 50.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478802, 55.936352, 50.333336>,  <41.218800, 56.055103, 50.053520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478802, 55.936352, 50.333336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360429, 0.930846, 0.060138,
		-0.669019, 0.213045, 0.712057,
		0.650003, -0.296879, 0.699542,
		41.673801, 55.847286, 50.543198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140343, 56.396465, 50.633919>,  <41.218800, 56.055103, 50.053520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140343, 56.396465, 50.633919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526192, 56.294243, 50.608009>,  <41.757702, 56.232910, 50.592464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526192, 56.294243, 50.608009>,  <41.140343, 56.396465, 50.633919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526192, 56.294243, 50.608009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258656, 0.964925, 0.044910,
		0.051024, -0.060075, 0.996889,
		0.964621, -0.255560, -0.064774,
		41.815578, 56.217575, 50.588577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594086, 56.583008, 51.327400>,  <41.140343, 56.396465, 50.633919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594086, 56.583008, 51.327400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824734, 56.584877, 51.000603>,  <41.963123, 56.585999, 50.804523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824734, 56.584877, 51.000603>,  <41.594086, 56.583008, 51.327400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824734, 56.584877, 51.000603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351106, 0.901518, 0.252963,
		0.737720, -0.432717, 0.518194,
		0.576622, 0.004675, -0.816998,
		41.997719, 56.586281, 50.755505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271812, 56.582073, 51.493366>,  <41.594086, 56.583008, 51.327400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271812, 56.582073, 51.493366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192402, 56.767540, 51.147976>,  <42.144756, 56.878822, 50.940742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192402, 56.767540, 51.147976>,  <42.271812, 56.582073, 51.493366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192402, 56.767540, 51.147976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407084, 0.840436, 0.357700,
		0.891554, -0.280494, -0.355604,
		-0.198530, 0.463670, -0.863479,
		42.132843, 56.906639, 50.888931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863205, 56.947483, 51.270176>,  <42.271812, 56.582073, 51.493366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863205, 56.947483, 51.270176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520805, 57.117954, 51.153114>,  <42.315365, 57.220238, 51.082878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520805, 57.117954, 51.153114>,  <42.863205, 56.947483, 51.270176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520805, 57.117954, 51.153114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312592, 0.877542, 0.363603,
		0.411777, 0.219760, -0.884390,
		-0.855994, 0.426176, -0.292656,
		42.264008, 57.245808, 51.065319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434746, 57.553246, 51.338745>,  <42.863205, 56.947483, 51.270176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434746, 57.553246, 51.338745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512905, 57.709522, 50.978928>,  <43.559803, 57.803288, 50.763039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512905, 57.709522, 50.978928>,  <43.434746, 57.553246, 51.338745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512905, 57.709522, 50.978928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772518, -0.626379, -0.104237,
		-0.604180, -0.674547, -0.424209,
		0.195403, 0.390687, -0.899545,
		43.571526, 57.826729, 50.709064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581955, 56.972202, 50.857117>,  <43.434746, 57.553246, 51.338745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581955, 56.972202, 50.857117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758423, 57.297340, 50.704983>,  <43.864304, 57.492424, 50.613701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758423, 57.297340, 50.704983>,  <43.581955, 56.972202, 50.857117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758423, 57.297340, 50.704983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838942, -0.524037, -0.146838,
		-0.318666, -0.254299, -0.913118,
		0.441167, 0.812845, -0.380335,
		43.890774, 57.541195, 50.590881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057407, 56.781013, 50.385078>,  <43.581955, 56.972202, 50.857117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057407, 56.781013, 50.385078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194103, 57.147125, 50.470379>,  <44.276119, 57.366795, 50.521561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194103, 57.147125, 50.470379>,  <44.057407, 56.781013, 50.385078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194103, 57.147125, 50.470379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935257, -0.308939, -0.172777,
		-0.092257, 0.258490, -0.961598,
		0.341736, 0.915281, 0.213253,
		44.296623, 57.421711, 50.534355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685383, 56.605991, 50.828655>,  <44.057407, 56.781013, 50.385078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685383, 56.605991, 50.828655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511559, 56.960388, 50.893364>,  <44.407265, 57.173027, 50.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511559, 56.960388, 50.893364>,  <44.685383, 56.605991, 50.828655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511559, 56.960388, 50.893364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819930, 0.463502, -0.335977,
		-0.372654, -0.013364, -0.927874,
		-0.434562, 0.885995, 0.161768,
		44.381191, 57.226189, 50.941895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848877, 56.965710, 50.245739>,  <44.685383, 56.605991, 50.828655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848877, 56.965710, 50.245739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813389, 57.236382, 50.538105>,  <44.792095, 57.398785, 50.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813389, 57.236382, 50.538105>,  <44.848877, 56.965710, 50.245739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813389, 57.236382, 50.538105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883746, 0.391983, -0.255620,
		-0.459479, 0.623264, -0.632789,
		-0.088724, 0.676677, 0.730915,
		44.786770, 57.439384, 50.757378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458874, 57.416382, 50.225559>,  <44.848877, 56.965710, 50.245739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458874, 57.416382, 50.225559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253662, 57.661911, 50.465569>,  <45.130535, 57.809227, 50.609573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253662, 57.661911, 50.465569>,  <45.458874, 57.416382, 50.225559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253662, 57.661911, 50.465569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741725, 0.668836, -0.050027,
		-0.432023, 0.419385, -0.798419,
		-0.513030, 0.613820, 0.600021,
		45.099754, 57.846058, 50.645576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658474, 56.767967, 50.725784>,  <45.458874, 57.416382, 50.225559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658474, 56.767967, 50.725784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701084, 56.554359, 51.061279>,  <45.726650, 56.426193, 51.262577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701084, 56.554359, 51.061279>,  <45.658474, 56.767967, 50.725784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701084, 56.554359, 51.061279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967399, 0.250587, 0.036685,
		-0.229766, 0.807483, 0.543303,
		0.106523, -0.534020, 0.838735,
		45.733040, 56.394154, 51.312901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826439, 57.201565, 51.329563>,  <45.658474, 56.767967, 50.725784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826439, 57.201565, 51.329563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976242, 56.830856, 51.341167>,  <46.066124, 56.608433, 51.348129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976242, 56.830856, 51.341167>,  <45.826439, 57.201565, 51.329563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976242, 56.830856, 51.341167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927023, 0.373587, -0.032578,
		0.019353, 0.039096, 0.999048,
		0.374505, -0.926771, 0.029013,
		46.088593, 56.552826, 51.349873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085808, 56.997009, 52.037495>,  <45.826439, 57.201565, 51.329563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085808, 56.997009, 52.037495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247456, 56.866623, 51.695633>,  <46.344444, 56.788391, 51.490517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247456, 56.866623, 51.695633>,  <46.085808, 56.997009, 52.037495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247456, 56.866623, 51.695633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860597, 0.452083, 0.234507,
		0.309935, -0.830282, 0.463219,
		0.404121, -0.325963, -0.854655,
		46.368690, 56.768833, 51.439236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729012, 56.662941, 52.196674>,  <46.085808, 56.997009, 52.037495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729012, 56.662941, 52.196674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730064, 56.780945, 51.814476>,  <46.730698, 56.851746, 51.585159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730064, 56.780945, 51.814476>,  <46.729012, 56.662941, 52.196674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730064, 56.780945, 51.814476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977121, 0.202449, 0.065199,
		0.212672, -0.933802, -0.287723,
		0.002634, 0.295006, -0.955492,
		46.730854, 56.869446, 51.527828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.090958, 56.162712, 51.751770>,  <46.729012, 56.662941, 52.196674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.090958, 56.162712, 51.751770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118233, 56.538422, 51.617241>,  <47.134598, 56.763847, 51.536522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118233, 56.538422, 51.617241>,  <47.090958, 56.162712, 51.751770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118233, 56.538422, 51.617241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994130, -0.035587, 0.102173,
		0.084000, -0.341314, -0.936188,
		0.068189, 0.939275, -0.336321,
		47.138691, 56.820206, 51.516346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669601, 56.193451, 51.351234>,  <47.090958, 56.162712, 51.751770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669601, 56.193451, 51.351234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585033, 56.583572, 51.376797>,  <47.534294, 56.817646, 51.392132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585033, 56.583572, 51.376797>,  <47.669601, 56.193451, 51.351234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585033, 56.583572, 51.376797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974302, 0.215497, -0.065547,
		-0.077699, 0.048401, -0.995801,
		-0.211420, 0.975304, 0.063901,
		47.521606, 56.876163, 51.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.142433, 56.485210, 50.750156>,  <47.669601, 56.193451, 51.351234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.142433, 56.485210, 50.750156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.051254, 56.711708, 51.066994>,  <47.996548, 56.847607, 51.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.051254, 56.711708, 51.066994>,  <48.142433, 56.485210, 50.750156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.051254, 56.711708, 51.066994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908576, 0.416162, -0.036036,
		-0.350044, 0.711463, -0.609335,
		-0.227944, 0.566241, 0.792094,
		47.982872, 56.881580, 51.304623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.469429, 56.520859, 51.413345>,  <48.142433, 56.485210, 50.750156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.469429, 56.520859, 51.413345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.510357, 56.275188, 51.726349>,  <48.534916, 56.127785, 51.914150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.510357, 56.275188, 51.726349>,  <48.469429, 56.520859, 51.413345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.510357, 56.275188, 51.726349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190624, 0.784162, 0.590553,
		-0.976316, 0.088738, 0.197314,
		0.102322, -0.614179, 0.782505,
		48.541054, 56.090935, 51.961102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.238289, 56.224289, 51.339863>,  <48.469429, 56.520859, 51.413345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.238289, 56.224289, 51.339863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.416386, 56.137764, 51.687420>,  <49.523243, 56.085850, 51.895954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.416386, 56.137764, 51.687420>,  <49.238289, 56.224289, 51.339863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.416386, 56.137764, 51.687420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434242, 0.900795, 0.001742,
		-0.783069, 0.376533, 0.495001,
		0.445239, -0.216314, 0.868890,
		49.549957, 56.072868, 51.948086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.017628, 56.652832, 51.906628>,  <49.238289, 56.224289, 51.339863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.017628, 56.652832, 51.906628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.386715, 56.499557, 51.923412>,  <49.608166, 56.407593, 51.933483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.386715, 56.499557, 51.923412>,  <49.017628, 56.652832, 51.906628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.386715, 56.499557, 51.923412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384485, 0.907057, -0.171521,
		0.027665, 0.174398, 0.984287,
		0.922716, -0.383189, 0.041960,
		49.663528, 56.384602, 51.936001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.509827, 57.170906, 52.190514>,  <49.017628, 56.652832, 51.906628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.509827, 57.170906, 52.190514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.728382, 56.893047, 52.003357>,  <49.859516, 56.726334, 51.891064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.728382, 56.893047, 52.003357>,  <49.509827, 57.170906, 52.190514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.728382, 56.893047, 52.003357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751732, 0.653061, -0.091710,
		0.369270, -0.301622, 0.879013,
		0.546387, -0.694648, -0.467894,
		49.892300, 56.684654, 51.862988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.158237, 56.787033, 52.570381>,  <49.509827, 57.170906, 52.190514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.158237, 56.787033, 52.570381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.186020, 56.854328, 52.177063>,  <50.202690, 56.894707, 51.941071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.186020, 56.854328, 52.177063>,  <50.158237, 56.787033, 52.570381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.186020, 56.854328, 52.177063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843239, 0.516768, 0.147982,
		0.533032, -0.839432, -0.105974,
		0.069457, 0.168240, -0.983296,
		50.206856, 56.904800, 51.882072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.897606, 56.657124, 52.387424>,  <50.158237, 56.787033, 52.570381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.897606, 56.657124, 52.387424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.711185, 56.957264, 52.199905>,  <50.599335, 57.137348, 52.087395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.711185, 56.957264, 52.199905>,  <50.897606, 56.657124, 52.387424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.711185, 56.957264, 52.199905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759080, 0.611311, 0.223823,
		0.454525, -0.251540, -0.854479,
		-0.466052, 0.750351, -0.468795,
		50.571369, 57.182369, 52.059265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.328579, 57.038204, 51.787651>,  <50.897606, 56.657124, 52.387424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.328579, 57.038204, 51.787651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050056, 57.264610, 51.964188>,  <50.882942, 57.400455, 52.070110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050056, 57.264610, 51.964188>,  <51.328579, 57.038204, 51.787651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.050056, 57.264610, 51.964188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713415, 0.613241, 0.339079,
		-0.078726, 0.550964, -0.830808,
		-0.696306, 0.566016, 0.441344,
		50.841164, 57.434414, 52.096592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.150932, 56.863907, 51.533283>,  <51.328579, 57.038204, 51.787651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.150932, 56.863907, 51.533283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.163322, 57.230732, 51.374268>,  <52.170757, 57.450829, 51.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.163322, 57.230732, 51.374268>,  <52.150932, 56.863907, 51.533283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.163322, 57.230732, 51.374268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795372, 0.218255, 0.565462,
		0.605329, -0.333703, -0.722647,
		0.030975, 0.917064, -0.397534,
		52.172615, 57.505852, 51.255009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.808620, 56.915630, 51.284428>,  <52.150932, 56.863907, 51.533283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.808620, 56.915630, 51.284428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.673740, 57.278557, 51.384888>,  <52.592812, 57.496311, 51.445164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.673740, 57.278557, 51.384888>,  <52.808620, 56.915630, 51.284428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.673740, 57.278557, 51.384888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853425, 0.181972, 0.488417,
		0.397446, 0.379031, -0.835686,
		-0.337197, 0.907316, 0.251151,
		52.572582, 57.550751, 51.460232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.181210, 57.465466, 50.963329>,  <52.808620, 56.915630, 51.284428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.181210, 57.465466, 50.963329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.045685, 57.533672, 51.333439>,  <52.964371, 57.574596, 51.555504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.045685, 57.533672, 51.333439>,  <53.181210, 57.465466, 50.963329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.045685, 57.533672, 51.333439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940046, 0.020557, 0.340429,
		0.039026, 0.985141, -0.167254,
		-0.338809, 0.170512, 0.925275,
		52.944042, 57.584827, 51.611023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.746140, 57.949162, 51.205799>,  <53.181210, 57.465466, 50.963329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.746140, 57.949162, 51.205799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.541794, 57.814438, 51.522171>,  <53.419186, 57.733604, 51.711994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.541794, 57.814438, 51.522171>,  <53.746140, 57.949162, 51.205799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.541794, 57.814438, 51.522171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847851, -0.045431, 0.528285,
		-0.141997, 0.940477, 0.308771,
		-0.510868, -0.336807, 0.790933,
		53.388535, 57.713394, 51.759453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.786629, 58.417603, 51.878181>,  <53.746140, 57.949162, 51.205799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.786629, 58.417603, 51.878181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.729340, 58.031048, 51.963577>,  <53.694965, 57.799114, 52.014816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.729340, 58.031048, 51.963577>,  <53.786629, 58.417603, 51.878181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.729340, 58.031048, 51.963577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726625, 0.043776, 0.685638,
		-0.671939, 0.253329, 0.695933,
		-0.143227, -0.966389, 0.213490,
		53.686371, 57.741131, 52.027626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.729702, 58.263569, 52.627289>,  <53.786629, 58.417603, 51.878181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.729702, 58.263569, 52.627289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.863808, 57.927696, 52.456390>,  <53.944271, 57.726173, 52.353851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.863808, 57.927696, 52.456390>,  <53.729702, 58.263569, 52.627289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.863808, 57.927696, 52.456390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746444, -0.039947, 0.664248,
		-0.574823, -0.541609, 0.613382,
		0.335260, -0.839681, -0.427243,
		53.964386, 57.675793, 52.328217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.707497, 57.625507, 53.033779>,  <53.729702, 58.263569, 52.627289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.707497, 57.625507, 53.033779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.006012, 57.648415, 52.768517>,  <54.185120, 57.662159, 52.609360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.006012, 57.648415, 52.768517>,  <53.707497, 57.625507, 53.033779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.006012, 57.648415, 52.768517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665379, -0.091168, 0.740917,
		-0.018030, -0.994188, -0.106141,
		0.746288, 0.057265, -0.663156,
		54.229897, 57.665592, 52.569569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.202534, 56.926777, 53.191597>,  <53.707497, 57.625507, 53.033779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.202534, 56.926777, 53.191597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.357185, 57.278427, 53.080132>,  <54.449974, 57.489418, 53.013252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.357185, 57.278427, 53.080132>,  <54.202534, 56.926777, 53.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.357185, 57.278427, 53.080132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776338, -0.147145, 0.612901,
		0.497816, -0.453297, -0.739392,
		0.386625, 0.879130, -0.278661,
		54.473171, 57.542168, 52.996532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.857582, 57.032604, 53.468204>,  <54.202534, 56.926777, 53.191597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.857582, 57.032604, 53.468204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.886047, 57.387497, 53.285889>,  <54.903126, 57.600433, 53.176498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.886047, 57.387497, 53.285889>,  <54.857582, 57.032604, 53.468204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.886047, 57.387497, 53.285889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957470, 0.067340, 0.280565,
		0.279620, -0.456374, -0.844710,
		0.071160, 0.887236, -0.455794,
		54.907394, 57.653667, 53.149151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.428780, 57.045727, 52.991993>,  <54.857582, 57.032604, 53.468204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.428780, 57.045727, 52.991993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.387802, 57.418819, 53.130272>,  <55.363216, 57.642677, 53.213242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.387802, 57.418819, 53.130272>,  <55.428780, 57.045727, 52.991993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.387802, 57.418819, 53.130272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981638, 0.038579, 0.186813,
		0.160910, 0.358491, -0.919561,
		-0.102446, 0.932736, 0.345701,
		55.357067, 57.698639, 53.233982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.961151, 57.527771, 52.659622>,  <55.428780, 57.045727, 52.991993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.961151, 57.527771, 52.659622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.862778, 57.637550, 53.031471>,  <55.803753, 57.703419, 53.254581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.862778, 57.637550, 53.031471>,  <55.961151, 57.527771, 52.659622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.862778, 57.637550, 53.031471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966501, -0.003216, 0.256642,
		0.073424, 0.961597, -0.264462,
		-0.245936, 0.274446, 0.929621,
		55.788998, 57.719883, 53.310356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.560795, 57.839874, 52.941971>,  <55.961151, 57.527771, 52.659622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.560795, 57.839874, 52.941971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.362961, 57.765930, 53.281666>,  <56.244259, 57.721561, 53.485485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.362961, 57.765930, 53.281666>,  <56.560795, 57.839874, 52.941971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.362961, 57.765930, 53.281666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827573, 0.198351, 0.525148,
		-0.265528, 0.962539, 0.054886,
		-0.494589, -0.184863, 0.849239,
		56.214584, 57.710472, 53.536438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.738312, 58.449108, 53.469944>,  <56.560795, 57.839874, 52.941971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.738312, 58.449108, 53.469944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.636978, 58.105560, 53.648006>,  <56.576176, 57.899429, 53.754845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.636978, 58.105560, 53.648006>,  <56.738312, 58.449108, 53.469944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.636978, 58.105560, 53.648006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900683, -0.041512, 0.432489,
		-0.352974, 0.510506, 0.784087,
		-0.253338, -0.858871, 0.445152,
		56.560978, 57.847900, 53.781551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.774429, 58.446941, 54.266155>,  <56.738312, 58.449108, 53.469944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.774429, 58.446941, 54.266155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.848907, 58.084991, 54.113041>,  <56.893593, 57.867821, 54.021172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.848907, 58.084991, 54.113041>,  <56.774429, 58.446941, 54.266155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.848907, 58.084991, 54.113041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870339, -0.028878, 0.491606,
		-0.455898, -0.424688, 0.782174,
		0.186192, -0.904879, -0.382788,
		56.904766, 57.813526, 53.998203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.969852, 57.953575, 54.900078>,  <56.774429, 58.446941, 54.266155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.969852, 57.953575, 54.900078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.119087, 57.795753, 54.564190>,  <57.208630, 57.701061, 54.362656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.119087, 57.795753, 54.564190>,  <56.969852, 57.953575, 54.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.119087, 57.795753, 54.564190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841333, -0.237656, 0.485467,
		-0.391108, -0.887607, 0.243286,
		0.373086, -0.394554, -0.839722,
		57.231014, 57.677387, 54.312275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.526718, 57.672894, 55.490139>,  <56.969852, 57.953575, 54.900078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.526718, 57.672894, 55.490139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.833305, 57.887138, 55.631927>,  <57.017258, 58.015686, 55.716999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.833305, 57.887138, 55.631927>,  <56.526718, 57.672894, 55.490139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.833305, 57.887138, 55.631927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061014, 0.610113, -0.789962,
		-0.639380, 0.583852, 0.500311,
		0.766467, 0.535611, 0.354471,
		57.063244, 58.047821, 55.738270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.888763, 57.489693, 56.226559>,  <56.526718, 57.672894, 55.490139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.888763, 57.489693, 56.226559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.216125, 57.316784, 56.075111>,  <57.412544, 57.213039, 55.984241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.216125, 57.316784, 56.075111>,  <56.888763, 57.489693, 56.226559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.216125, 57.316784, 56.075111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458446, 0.093908, 0.883747,
		-0.346461, -0.896842, 0.275027,
		0.818408, -0.432268, -0.378618,
		57.461647, 57.187103, 55.961525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.175434, 56.938881, 56.640697>,  <56.888763, 57.489693, 56.226559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.175434, 56.938881, 56.640697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.467270, 57.140030, 56.455299>,  <57.642372, 57.260719, 56.344059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.467270, 57.140030, 56.455299>,  <57.175434, 56.938881, 56.640697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.467270, 57.140030, 56.455299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447241, 0.161886, 0.879641,
		0.517378, -0.849067, -0.106794,
		0.729586, 0.502870, -0.463494,
		57.686146, 57.290890, 56.316250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.861702, 56.583866, 56.796509>,  <57.175434, 56.938881, 56.640697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.861702, 56.583866, 56.796509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.909454, 56.977242, 56.741974>,  <57.938107, 57.213268, 56.709251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.909454, 56.977242, 56.741974>,  <57.861702, 56.583866, 56.796509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.909454, 56.977242, 56.741974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510101, 0.057054, 0.858220,
		0.851789, -0.172002, -0.494844,
		0.119383, 0.983443, -0.136336,
		57.945271, 57.272274, 56.701073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.452698, 56.725899, 56.965260>,  <57.861702, 56.583866, 56.796509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.452698, 56.725899, 56.965260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280235, 57.085007, 57.001274>,  <58.176758, 57.300472, 57.022884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280235, 57.085007, 57.001274>,  <58.452698, 56.725899, 56.965260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.280235, 57.085007, 57.001274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424998, 0.114047, 0.897981,
		0.795915, 0.425437, -0.430724,
		-0.431157, 0.897773, 0.090038,
		58.150887, 57.354340, 57.028286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.019814, 57.264969, 57.047462>,  <58.452698, 56.725899, 56.965260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.019814, 57.264969, 57.047462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.682976, 57.397850, 57.217415>,  <58.480873, 57.477577, 57.319386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.682976, 57.397850, 57.217415>,  <59.019814, 57.264969, 57.047462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.682976, 57.397850, 57.217415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531529, 0.377639, 0.758199,
		0.091421, 0.864310, -0.494580,
		-0.842092, 0.332200, 0.424882,
		58.430347, 57.497509, 57.344879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.086945, 58.051926, 57.202614>,  <59.019814, 57.264969, 57.047462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.086945, 58.051926, 57.202614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.817917, 57.877209, 57.441566>,  <58.656498, 57.772377, 57.584938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.817917, 57.877209, 57.441566>,  <59.086945, 58.051926, 57.202614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.817917, 57.877209, 57.441566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515939, 0.301931, 0.801651,
		-0.530522, 0.847378, 0.022288,
		-0.672572, -0.436793, 0.597377,
		58.616146, 57.746170, 57.620781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.367302, 58.081287, 57.742683>,  <59.086945, 58.051926, 57.202614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.367302, 58.081287, 57.742683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.308182, 58.133347, 58.134850>,  <59.272709, 58.164581, 58.370148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.308182, 58.133347, 58.134850>,  <59.367302, 58.081287, 57.742683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.308182, 58.133347, 58.134850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246269, -0.955236, 0.163936,
		0.957865, 0.265676, 0.109136,
		-0.147804, 0.130152, 0.980415,
		59.263840, 58.172394, 58.428974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.006935, 58.013100, 58.051022>,  <59.367302, 58.081287, 57.742683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.006935, 58.013100, 58.051022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.661560, 57.926064, 58.233070>,  <59.454334, 57.873840, 58.342300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.661560, 57.926064, 58.233070>,  <60.006935, 58.013100, 58.051022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.661560, 57.926064, 58.233070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337552, -0.919662, 0.200699,
		0.374889, 0.326918, 0.867515,
		-0.863433, -0.217591, 0.455124,
		59.402531, 57.860786, 58.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.087002, 57.864391, 58.743927>,  <60.006935, 58.013100, 58.051022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.087002, 57.864391, 58.743927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.763466, 57.657944, 58.631218>,  <59.569344, 57.534077, 58.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.763466, 57.657944, 58.631218>,  <60.087002, 57.864391, 58.743927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.763466, 57.657944, 58.631218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374789, -0.821732, 0.429290,
		-0.453106, 0.241623, 0.858087,
		-0.808844, -0.516116, -0.281774,
		59.520813, 57.503109, 58.546684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.942158, 57.324627, 59.281517>,  <60.087002, 57.864391, 58.743927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.942158, 57.324627, 59.281517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.770493, 57.180363, 58.950279>,  <59.667492, 57.093803, 58.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.770493, 57.180363, 58.950279>,  <59.942158, 57.324627, 59.281517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.770493, 57.180363, 58.950279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599915, -0.799200, 0.037163,
		-0.675218, -0.480838, 0.559352,
		-0.429165, -0.360657, -0.828097,
		59.641743, 57.072166, 58.701851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.733902, 56.554028, 59.285244>,  <59.942158, 57.324627, 59.281517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.733902, 56.554028, 59.285244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.799484, 56.661327, 58.905525>,  <59.838833, 56.725708, 58.677696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.799484, 56.661327, 58.905525>,  <59.733902, 56.554028, 59.285244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.799484, 56.661327, 58.905525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666600, -0.739487, -0.093831,
		-0.727160, -0.617414, -0.300062,
		0.163960, 0.268252, -0.949294,
		59.848671, 56.741802, 58.620739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.619415, 55.942432, 58.859810>,  <59.733902, 56.554028, 59.285244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.619415, 55.942432, 58.859810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.857552, 56.210865, 58.683075>,  <60.000435, 56.371925, 58.577034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.857552, 56.210865, 58.683075>,  <59.619415, 55.942432, 58.859810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.857552, 56.210865, 58.683075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722065, -0.688055, -0.072123,
		-0.352407, -0.276096, -0.894192,
		0.595341, 0.671082, -0.441835,
		60.036156, 56.412189, 58.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.873131, 55.848038, 58.159061>,  <59.619415, 55.942432, 58.859810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.873131, 55.848038, 58.159061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.108330, 56.040554, 58.419098>,  <60.249451, 56.156063, 58.575119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.108330, 56.040554, 58.419098>,  <59.873131, 55.848038, 58.159061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.108330, 56.040554, 58.419098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754188, -0.616694, -0.225587,
		0.292338, 0.622938, -0.725594,
		0.587996, 0.481287, 0.650095,
		60.284729, 56.184940, 58.614128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.545406, 55.931004, 57.811382>,  <59.873131, 55.848038, 58.159061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.545406, 55.931004, 57.811382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.565529, 55.940216, 58.210770>,  <60.577602, 55.945744, 58.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.565529, 55.940216, 58.210770>,  <60.545406, 55.931004, 57.811382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.565529, 55.940216, 58.210770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706872, -0.707078, -0.019309,
		0.705550, 0.706760, -0.051851,
		0.050310, 0.023028, 0.998468,
		60.580624, 55.947124, 58.510311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.250454, 55.897518, 58.050343>,  <60.545406, 55.931004, 57.811382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.250454, 55.897518, 58.050343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.029007, 55.750961, 58.349480>,  <60.896137, 55.663029, 58.528961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.029007, 55.750961, 58.349480>,  <61.250454, 55.897518, 58.050343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.029007, 55.750961, 58.349480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621326, -0.779662, 0.077980,
		0.554491, 0.507823, 0.659284,
		-0.553619, -0.366391, 0.747839,
		60.862923, 55.641045, 58.573830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.731030, 55.715160, 58.614956>,  <61.250454, 55.897518, 58.050343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.731030, 55.715160, 58.614956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.406555, 55.481247, 58.615746>,  <61.211868, 55.340900, 58.616219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.406555, 55.481247, 58.615746>,  <61.731030, 55.715160, 58.614956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.406555, 55.481247, 58.615746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550177, -0.762031, 0.341487,
		-0.198188, 0.278099, 0.939885,
		-0.811189, -0.584781, 0.001978,
		61.163200, 55.305813, 58.616341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.055679, 56.149487, 58.092213>,  <61.731030, 55.715160, 58.614956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.055679, 56.149487, 58.092213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.251022, 56.234337, 58.430801>,  <62.368229, 56.285248, 58.633953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.251022, 56.234337, 58.430801>,  <62.055679, 56.149487, 58.092213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.251022, 56.234337, 58.430801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353780, 0.934842, -0.030166,
		-0.797714, -0.284732, 0.531583,
		0.488357, 0.212127, 0.846469,
		62.397530, 56.297974, 58.684742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.690350, 56.294529, 57.728226>,  <62.055679, 56.149487, 58.092213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.690350, 56.294529, 57.728226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.682625, 56.404293, 57.343658>,  <62.677990, 56.470150, 57.112919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.682625, 56.404293, 57.343658>,  <62.690350, 56.294529, 57.728226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.682625, 56.404293, 57.343658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985776, -0.155343, -0.064143,
		-0.166951, -0.948983, -0.267506,
		-0.019316, 0.274410, -0.961419,
		62.676830, 56.486614, 57.055233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.870056, 55.694675, 57.219303>,  <62.690350, 56.294529, 57.728226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.870056, 55.694675, 57.219303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.040726, 56.045197, 57.129814>,  <63.143127, 56.255508, 57.076122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.040726, 56.045197, 57.129814>,  <62.870056, 55.694675, 57.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.040726, 56.045197, 57.129814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904294, -0.409484, 0.120726,
		0.014184, -0.253818, -0.967148,
		0.426674, 0.876299, -0.223718,
		63.168728, 56.308086, 57.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.531879, 55.493565, 57.617752>,  <62.870056, 55.694675, 57.219303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.531879, 55.493565, 57.617752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.543457, 55.849171, 57.434967>,  <63.550404, 56.062534, 57.325294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.543457, 55.849171, 57.434967>,  <63.531879, 55.493565, 57.617752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.543457, 55.849171, 57.434967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944483, 0.125358, 0.303705,
		0.327282, -0.440389, -0.836029,
		0.028946, 0.889012, -0.456967,
		63.552139, 56.115875, 57.297878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.124130, 55.448990, 57.167011>,  <63.531879, 55.493565, 57.617752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.124130, 55.448990, 57.167011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.025154, 55.812950, 57.300186>,  <63.965767, 56.031326, 57.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.025154, 55.812950, 57.300186>,  <64.124130, 55.448990, 57.167011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.025154, 55.812950, 57.300186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916832, 0.108753, 0.384178,
		0.313357, 0.400309, -0.861139,
		-0.247441, 0.909904, 0.332937,
		63.950920, 56.085922, 57.400066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.757553, 55.966370, 56.999741>,  <64.124130, 55.448990, 57.167011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.757553, 55.966370, 56.999741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.553719, 56.107643, 57.313576>,  <64.431419, 56.192406, 57.501877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.553719, 56.107643, 57.313576>,  <64.757553, 55.966370, 56.999741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.553719, 56.107643, 57.313576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855505, 0.110712, 0.505820,
		0.091781, 0.928982, -0.358565,
		-0.509595, 0.353179, 0.784588,
		64.400841, 56.213596, 57.548950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.999184, 56.639126, 57.334126>,  <64.757553, 55.966370, 56.999741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.999184, 56.639126, 57.334126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.857735, 56.392685, 57.615654>,  <64.772865, 56.244820, 57.784573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.857735, 56.392685, 57.615654>,  <64.999184, 56.639126, 57.334126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.857735, 56.392685, 57.615654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916878, -0.079352, 0.391202,
		-0.185171, 0.783658, 0.592952,
		-0.353620, -0.616103, 0.703825,
		64.751648, 56.207855, 57.826801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.915649, 56.958637, 58.023712>,  <64.999184, 56.639126, 57.334126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.915649, 56.958637, 58.023712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.031662, 56.579258, 57.972595>,  <65.101273, 56.351631, 57.941925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.031662, 56.579258, 57.972595>,  <64.915649, 56.958637, 58.023712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.031662, 56.579258, 57.972595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839462, 0.188006, 0.509860,
		-0.459549, -0.255152, 0.850713,
		0.290031, -0.948447, -0.127792,
		65.118668, 56.294724, 57.934258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.155807, 56.517998, 58.580276>,  <64.915649, 56.958637, 58.023712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.155807, 56.517998, 58.580276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.356552, 56.405952, 58.252945>,  <65.476997, 56.338726, 58.056545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.356552, 56.405952, 58.252945>,  <65.155807, 56.517998, 58.580276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.356552, 56.405952, 58.252945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834535, 0.405481, 0.373010,
		0.227335, -0.870129, 0.437258,
		0.501866, -0.280109, -0.818333,
		65.507111, 56.321918, 58.007446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.658478, 56.064434, 58.824867>,  <65.155807, 56.517998, 58.580276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.658478, 56.064434, 58.824867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.763329, 56.227146, 58.474823>,  <65.826241, 56.324772, 58.264797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.763329, 56.227146, 58.474823>,  <65.658478, 56.064434, 58.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.763329, 56.227146, 58.474823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927612, 0.143864, 0.344730,
		0.266125, -0.902128, -0.339622,
		0.262131, 0.406779, -0.875111,
		65.841965, 56.349178, 58.212292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.228470, 55.653481, 58.549236>,  <65.658478, 56.064434, 58.824867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.228470, 55.653481, 58.549236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.214630, 56.040680, 58.449814>,  <66.206329, 56.272999, 58.390160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.214630, 56.040680, 58.449814>,  <66.228470, 55.653481, 58.549236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.214630, 56.040680, 58.449814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975131, 0.087171, 0.203769,
		0.218915, -0.235328, -0.946941,
		-0.034593, 0.967999, -0.248559,
		66.204254, 56.331081, 58.375248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.740479, 55.817619, 57.967583>,  <66.228470, 55.653481, 58.549236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.740479, 55.817619, 57.967583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.695862, 56.105801, 58.241371>,  <66.669090, 56.278709, 58.405647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.695862, 56.105801, 58.241371>,  <66.740479, 55.817619, 57.967583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.695862, 56.105801, 58.241371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975766, 0.209882, -0.061891,
		-0.188249, 0.660984, -0.726404,
		-0.111550, 0.720451, 0.684476,
		66.662399, 56.321938, 58.446712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.921867, 56.498493, 57.738201>,  <66.740479, 55.817619, 57.967583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.921867, 56.498493, 57.738201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.008453, 56.493549, 58.128685>,  <67.060402, 56.490585, 58.362976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.008453, 56.493549, 58.128685>,  <66.921867, 56.498493, 57.738201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.008453, 56.493549, 58.128685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929510, 0.308423, -0.202206,
		-0.298587, 0.951169, 0.078249,
		0.216466, -0.012357, 0.976212,
		67.073395, 56.489841, 58.421547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.412224, 57.078590, 57.850571>,  <66.921867, 56.498493, 57.738201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.412224, 57.078590, 57.850571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.463745, 56.823990, 58.154747>,  <67.494659, 56.671230, 58.337254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.463745, 56.823990, 58.154747>,  <67.412224, 57.078590, 57.850571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.463745, 56.823990, 58.154747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952229, 0.293497, 0.084379,
		-0.276895, 0.713247, 0.643901,
		0.128800, -0.636505, 0.760442,
		67.502388, 56.633038, 58.382881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.594284, 57.484447, 58.454002>,  <67.412224, 57.078590, 57.850571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.594284, 57.484447, 58.454002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.752174, 57.117302, 58.437416>,  <67.846909, 56.897015, 58.427464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.752174, 57.117302, 58.437416>,  <67.594284, 57.484447, 58.454002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.752174, 57.117302, 58.437416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915533, 0.389117, 0.101918,
		-0.077412, -0.078192, 0.993928,
		0.394723, -0.917864, -0.041465,
		67.870590, 56.841942, 58.424976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.026611, 57.103065, 58.930992>,  <67.594284, 57.484447, 58.454002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.026611, 57.103065, 58.930992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.188881, 56.950165, 58.598892>,  <68.286240, 56.858425, 58.399632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.188881, 56.950165, 58.598892>,  <68.026611, 57.103065, 58.930992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.188881, 56.950165, 58.598892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911984, 0.108682, 0.395567,
		-0.060973, -0.917644, 0.392696,
		0.405669, -0.382252, -0.830251,
		68.310585, 56.835491, 58.349815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.638893, 56.773296, 59.180836>,  <68.026611, 57.103065, 58.930992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.638893, 56.773296, 59.180836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.691124, 56.772511, 58.784264>,  <68.722466, 56.772041, 58.546318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.691124, 56.772511, 58.784264>,  <68.638893, 56.773296, 59.180836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.691124, 56.772511, 58.784264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990985, -0.029923, 0.130587,
		-0.029923, -0.999550, -0.001963,
		-0.130587, 0.001963, 0.991435,
		68.730301, 56.771923, 58.486832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.000450, 56.245308, 58.918900>,  <68.638893, 56.773296, 59.180836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.000450, 56.245308, 58.918900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.062408, 56.539192, 58.654716>,  <69.099579, 56.715523, 58.496204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.062408, 56.539192, 58.654716>,  <69.000450, 56.245308, 58.918900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.062408, 56.539192, 58.654716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987217, -0.089674, 0.131765,
		0.037583, -0.672427, -0.739209,
		0.154890, 0.734711, -0.660461,
		69.108879, 56.759605, 58.456577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.430016, 56.044754, 58.410599>,  <69.000450, 56.245308, 58.918900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.430016, 56.044754, 58.410599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.471985, 56.435974, 58.482605>,  <69.497169, 56.670708, 58.525806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.471985, 56.435974, 58.482605>,  <69.430016, 56.044754, 58.410599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.471985, 56.435974, 58.482605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972822, -0.138520, 0.185551,
		0.206413, 0.155649, -0.966006,
		0.104931, 0.978052, 0.180011,
		69.503464, 56.729389, 58.536610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.993965, 56.291718, 57.989601>,  <69.430016, 56.044754, 58.410599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.993965, 56.291718, 57.989601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.949654, 56.512791, 58.320000>,  <69.923065, 56.645435, 58.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.949654, 56.512791, 58.320000>,  <69.993965, 56.291718, 57.989601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.949654, 56.512791, 58.320000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975532, -0.098348, 0.196632,
		0.189911, 0.827566, -0.528269,
		-0.110772, 0.552686, 0.825995,
		69.916420, 56.678596, 58.567799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.531540, 56.893024, 58.032452>,  <69.993965, 56.291718, 57.989601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.531540, 56.893024, 58.032452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.420090, 56.797100, 58.404442>,  <70.353218, 56.739544, 58.627636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.420090, 56.797100, 58.404442>,  <70.531540, 56.893024, 58.032452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.420090, 56.797100, 58.404442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955371, 0.029749, 0.293906,
		-0.098149, 0.970363, 0.220823,
		-0.278627, -0.239814, 0.929977,
		70.336502, 56.725155, 58.683434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.622375, 57.462543, 58.455326>,  <70.531540, 56.893024, 58.032452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.622375, 57.462543, 58.455326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.670387, 57.114124, 58.645851>,  <70.699196, 56.905071, 58.760166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.670387, 57.114124, 58.645851>,  <70.622375, 57.462543, 58.455326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.670387, 57.114124, 58.645851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943089, 0.249912, 0.219379,
		-0.310125, 0.422872, 0.851470,
		0.120023, -0.871047, 0.476310,
		70.706390, 56.852810, 58.788746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.808525, 57.480793, 59.279064>,  <70.622375, 57.462543, 58.455326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.808525, 57.480793, 59.279064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.972664, 57.172920, 59.083435>,  <71.071152, 56.988197, 58.966057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.972664, 57.172920, 59.083435>,  <70.808525, 57.480793, 59.279064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.972664, 57.172920, 59.083435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890454, 0.222498, 0.396970,
		-0.196724, -0.598397, 0.776673,
		0.410354, -0.769686, -0.489074,
		71.095772, 56.942013, 58.936714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.044731, 56.993008, 59.687992>,  <70.808525, 57.480793, 59.279064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.044731, 56.993008, 59.687992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.261070, 57.016136, 59.352341>,  <71.390877, 57.030014, 59.150951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.261070, 57.016136, 59.352341>,  <71.044731, 56.993008, 59.687992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.261070, 57.016136, 59.352341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798173, 0.279421, 0.533708,
		0.265325, -0.958427, 0.104982,
		0.540854, 0.057813, -0.839127,
		71.423325, 57.033482, 59.100601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.713181, 56.580524, 59.632172>,  <71.044731, 56.993008, 59.687992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.713181, 56.580524, 59.632172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.700081, 56.934235, 59.445847>,  <71.692223, 57.146461, 59.334049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.700081, 56.934235, 59.445847>,  <71.713181, 56.580524, 59.632172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.700081, 56.934235, 59.445847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681313, 0.360748, 0.636925,
		0.731259, -0.296509, -0.614282,
		-0.032747, 0.884276, -0.465816,
		71.690254, 57.199516, 59.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.385223, 56.853489, 59.555260>,  <71.713181, 56.580524, 59.632172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.385223, 56.853489, 59.555260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.120743, 57.151649, 59.589157>,  <71.962051, 57.330544, 59.609497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.120743, 57.151649, 59.589157>,  <72.385223, 56.853489, 59.555260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.120743, 57.151649, 59.589157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561467, 0.416779, 0.714878,
		0.497550, 0.520265, -0.694095,
		-0.661211, 0.745398, 0.084743,
		71.922379, 57.375271, 59.614578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.862572, 57.439137, 59.578987>,  <72.385223, 56.853489, 59.555260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.862572, 57.439137, 59.578987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.512497, 57.516621, 59.756317>,  <72.302452, 57.563110, 59.862717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.512497, 57.516621, 59.756317>,  <72.862572, 57.439137, 59.578987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.512497, 57.516621, 59.756317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475981, 0.508803, 0.717330,
		-0.086612, 0.838807, -0.537496,
		-0.875180, 0.193708, 0.443325,
		72.249947, 57.574734, 59.889313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.859329, 58.230804, 59.767929>,  <72.862572, 57.439137, 59.578987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.859329, 58.230804, 59.767929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.683563, 57.969631, 60.014702>,  <72.578102, 57.812927, 60.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.683563, 57.969631, 60.014702>,  <72.859329, 58.230804, 59.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.683563, 57.969631, 60.014702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485228, 0.405446, 0.774705,
		-0.755960, 0.639763, 0.138664,
		-0.439406, -0.652930, 0.616931,
		72.551743, 57.773750, 60.199780>
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
