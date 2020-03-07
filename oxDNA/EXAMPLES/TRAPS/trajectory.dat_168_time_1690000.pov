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
	<36.086273, 52.236965, 49.901695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232353, 52.539993, 50.118111>,  <36.320000, 52.721809, 50.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232353, 52.539993, 50.118111>,  <36.086273, 52.236965, 49.901695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232353, 52.539993, 50.118111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470273, 0.351443, -0.809526,
		-0.803415, 0.550071, -0.227918,
		0.365196, 0.757568, 0.541038,
		36.341911, 52.767265, 50.280422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273674, 52.735161, 49.364445>,  <36.086273, 52.236965, 49.901695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273674, 52.735161, 49.364445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459755, 52.853729, 49.698086>,  <36.571404, 52.924870, 49.898270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459755, 52.853729, 49.698086>,  <36.273674, 52.735161, 49.364445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459755, 52.853729, 49.698086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695619, 0.460330, -0.551553,
		-0.547453, 0.836799, 0.007949,
		0.465198, 0.296420, 0.834102,
		36.599316, 52.942654, 49.948315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334332, 53.573254, 49.520103>,  <36.273674, 52.735161, 49.364445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334332, 53.573254, 49.520103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615433, 53.297760, 49.591408>,  <36.784096, 53.132462, 49.634190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615433, 53.297760, 49.591408>,  <36.334332, 53.573254, 49.520103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615433, 53.297760, 49.591408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615803, 0.463409, -0.637212,
		0.356261, 0.557580, 0.749789,
		0.702755, -0.688736, 0.178265,
		36.826260, 53.091141, 49.644886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951267, 53.898563, 49.268143>,  <36.334332, 53.573254, 49.520103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951267, 53.898563, 49.268143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056026, 53.512543, 49.264549>,  <37.118881, 53.280930, 49.262394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056026, 53.512543, 49.264549>,  <36.951267, 53.898563, 49.268143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056026, 53.512543, 49.264549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516469, 0.148008, -0.843418,
		0.815274, 0.216248, 0.537183,
		0.261895, -0.965055, -0.008982,
		37.134594, 53.223026, 49.261856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694595, 53.887138, 49.063416>,  <36.951267, 53.898563, 49.268143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694595, 53.887138, 49.063416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484753, 53.563316, 48.958035>,  <37.358849, 53.369022, 48.894806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484753, 53.563316, 48.958035>,  <37.694595, 53.887138, 49.063416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484753, 53.563316, 48.958035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326985, 0.094120, -0.940331,
		0.786045, -0.579451, 0.215336,
		-0.524608, -0.809554, -0.263454,
		37.327370, 53.320450, 48.878998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236225, 53.553825, 49.529179>,  <37.694595, 53.887138, 49.063416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236225, 53.553825, 49.529179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408043, 53.910290, 49.470764>,  <38.511131, 54.124168, 49.435715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408043, 53.910290, 49.470764>,  <38.236225, 53.553825, 49.529179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408043, 53.910290, 49.470764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859660, -0.353996, 0.368336,
		0.276549, -0.283761, -0.918151,
		0.429540, 0.891160, -0.146041,
		38.536903, 54.177639, 49.426952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849930, 53.478706, 49.058792>,  <38.236225, 53.553825, 49.529179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849930, 53.478706, 49.058792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865467, 53.783390, 49.317493>,  <38.874790, 53.966198, 49.472713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865467, 53.783390, 49.317493>,  <38.849930, 53.478706, 49.058792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865467, 53.783390, 49.317493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893043, -0.316834, 0.319515,
		0.448291, 0.565172, -0.692543,
		0.038840, 0.761707, 0.646757,
		38.877121, 54.011902, 49.511520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473675, 53.889053, 49.055706>,  <38.849930, 53.478706, 49.058792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473675, 53.889053, 49.055706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319302, 53.918072, 49.423576>,  <39.226677, 53.935482, 49.644299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319302, 53.918072, 49.423576>,  <39.473675, 53.889053, 49.055706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319302, 53.918072, 49.423576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802886, -0.464566, 0.373568,
		0.454349, 0.882562, 0.121044,
		-0.385930, 0.072546, 0.919671,
		39.203522, 53.939835, 49.699478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981747, 54.187084, 49.529518>,  <39.473675, 53.889053, 49.055706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981747, 54.187084, 49.529518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731773, 53.966660, 49.750710>,  <39.581791, 53.834404, 49.883427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731773, 53.966660, 49.750710>,  <39.981747, 54.187084, 49.529518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731773, 53.966660, 49.750710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768467, -0.559030, 0.311358,
		0.137556, 0.619526, 0.772830,
		-0.624930, -0.551065, 0.552983,
		39.544296, 53.801338, 49.916603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267174, 54.283859, 50.165237>,  <39.981747, 54.187084, 49.529518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267174, 54.283859, 50.165237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054741, 53.944946, 50.161938>,  <39.927280, 53.741600, 50.159958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054741, 53.944946, 50.161938>,  <40.267174, 54.283859, 50.165237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054741, 53.944946, 50.161938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733803, -0.464776, 0.495498,
		-0.423660, 0.257096, 0.868570,
		-0.531081, -0.847281, -0.008249,
		39.895416, 53.690762, 50.159462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982113, 54.147118, 50.296539>,  <40.267174, 54.283859, 50.165237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982113, 54.147118, 50.296539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307915, 53.960262, 50.434158>,  <41.503395, 53.848148, 50.516731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307915, 53.960262, 50.434158>,  <40.982113, 54.147118, 50.296539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307915, 53.960262, 50.434158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346988, -0.867505, -0.356418,
		0.464961, 0.170922, -0.868675,
		0.814500, -0.467140, 0.344048,
		41.552265, 53.820122, 50.537373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346088, 53.803761, 49.714043>,  <40.982113, 54.147118, 50.296539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346088, 53.803761, 49.714043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360016, 53.603241, 50.059872>,  <41.368374, 53.482929, 50.267368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360016, 53.603241, 50.059872>,  <41.346088, 53.803761, 49.714043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360016, 53.603241, 50.059872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563254, -0.724460, -0.397370,
		0.825550, -0.473140, -0.307580,
		0.034818, -0.501294, 0.864576,
		41.370461, 53.452854, 50.319244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505154, 53.023560, 49.677635>,  <41.346088, 53.803761, 49.714043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505154, 53.023560, 49.677635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283096, 53.106476, 49.999840>,  <41.149860, 53.156227, 50.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283096, 53.106476, 49.999840>,  <41.505154, 53.023560, 49.677635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283096, 53.106476, 49.999840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647398, -0.715704, -0.261999,
		0.522196, -0.666933, 0.531519,
		-0.555146, 0.207290, 0.805508,
		41.116554, 53.168663, 50.241493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430748, 52.441608, 50.030754>,  <41.505154, 53.023560, 49.677635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430748, 52.441608, 50.030754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116043, 52.670563, 50.123169>,  <40.927219, 52.807934, 50.178616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116043, 52.670563, 50.123169>,  <41.430748, 52.441608, 50.030754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116043, 52.670563, 50.123169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609963, -0.778315, -0.148894,
		0.094592, -0.258067, 0.961485,
		-0.786764, 0.572387, 0.231034,
		40.880013, 52.842278, 50.192478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632465, 51.627724, 50.045231>,  <41.430748, 52.441608, 50.030754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632465, 51.627724, 50.045231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610210, 51.230473, 50.004028>,  <41.596859, 50.992123, 49.979309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610210, 51.230473, 50.004028>,  <41.632465, 51.627724, 50.045231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610210, 51.230473, 50.004028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055468, 0.106076, -0.992810,
		0.996909, -0.049520, -0.060988,
		-0.055634, -0.993124, -0.103002,
		41.593521, 50.932537, 49.973129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283581, 51.276047, 49.856750>,  <41.632465, 51.627724, 50.045231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283581, 51.276047, 49.856750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950348, 51.122963, 49.696999>,  <41.750408, 51.031113, 49.601147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950348, 51.122963, 49.696999>,  <42.283581, 51.276047, 49.856750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950348, 51.122963, 49.696999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270504, 0.347916, -0.897654,
		0.482494, -0.855853, -0.186317,
		-0.833083, -0.382713, -0.399379,
		41.700424, 51.008148, 49.577187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853111, 51.594463, 50.192383>,  <42.283581, 51.276047, 49.856750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853111, 51.594463, 50.192383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645794, 51.922417, 50.095089>,  <42.521404, 52.119190, 50.036713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645794, 51.922417, 50.095089>,  <42.853111, 51.594463, 50.192383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645794, 51.922417, 50.095089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770811, -0.324658, 0.548130,
		0.370435, 0.471581, 0.800243,
		-0.518293, 0.819883, -0.243235,
		42.490307, 52.168381, 50.022118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495007, 51.933777, 50.203819>,  <42.853111, 51.594463, 50.192383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495007, 51.933777, 50.203819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383499, 51.624344, 50.431454>,  <43.316593, 51.438686, 50.568035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383499, 51.624344, 50.431454>,  <43.495007, 51.933777, 50.203819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383499, 51.624344, 50.431454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705714, -0.566920, -0.424934,
		0.651348, 0.283154, 0.703967,
		-0.278771, -0.773579, 0.569088,
		43.299870, 51.392269, 50.602180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058720, 51.558491, 50.688637>,  <43.495007, 51.933777, 50.203819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058720, 51.558491, 50.688637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781254, 51.324524, 50.520493>,  <43.614773, 51.184143, 50.419605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781254, 51.324524, 50.520493>,  <44.058720, 51.558491, 50.688637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781254, 51.324524, 50.520493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688152, -0.365762, -0.626630,
		0.212773, -0.723944, 0.656226,
		-0.693668, -0.584913, -0.420359,
		43.573154, 51.149052, 50.394386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182762, 50.763371, 50.713207>,  <44.058720, 51.558491, 50.688637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182762, 50.763371, 50.713207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963612, 50.848717, 50.389652>,  <43.832123, 50.899925, 50.195518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963612, 50.848717, 50.389652>,  <44.182762, 50.763371, 50.713207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963612, 50.848717, 50.389652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688752, -0.433766, -0.580920,
		-0.474819, -0.875398, 0.090693,
		-0.547876, 0.213367, -0.808892,
		43.799248, 50.912727, 50.146984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053371, 50.077961, 50.361813>,  <44.182762, 50.763371, 50.713207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053371, 50.077961, 50.361813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116856, 50.394943, 50.126247>,  <44.154945, 50.585133, 49.984909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116856, 50.394943, 50.126247>,  <44.053371, 50.077961, 50.361813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116856, 50.394943, 50.126247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642904, -0.535641, -0.547507,
		-0.749323, -0.291722, -0.594485,
		0.158711, 0.792457, -0.588917,
		44.164467, 50.632679, 49.949574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028954, 49.902218, 49.641926>,  <44.053371, 50.077961, 50.361813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028954, 49.902218, 49.641926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299671, 50.195183, 49.671646>,  <44.462101, 50.370964, 49.689480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299671, 50.195183, 49.671646>,  <44.028954, 49.902218, 49.641926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299671, 50.195183, 49.671646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696206, -0.603970, -0.387966,
		-0.239276, 0.314302, -0.918674,
		0.676790, 0.732417, 0.074303,
		44.502708, 50.414909, 49.693935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450306, 49.996853, 48.982994>,  <44.028954, 49.902218, 49.641926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450306, 49.996853, 48.982994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667164, 50.123852, 49.294189>,  <44.797279, 50.200050, 49.480907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667164, 50.123852, 49.294189>,  <44.450306, 49.996853, 48.982994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667164, 50.123852, 49.294189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769978, -0.558444, -0.308665,
		0.336464, 0.766378, -0.547226,
		0.542149, 0.317498, 0.777991,
		44.829807, 50.219101, 49.527588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040524, 50.301418, 48.675083>,  <44.450306, 49.996853, 48.982994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040524, 50.301418, 48.675083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064938, 50.127399, 49.034416>,  <45.079586, 50.022987, 49.250015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064938, 50.127399, 49.034416>,  <45.040524, 50.301418, 48.675083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064938, 50.127399, 49.034416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563764, -0.727680, -0.390706,
		0.823677, 0.530297, 0.200850,
		0.061035, -0.435048, 0.898336,
		45.083248, 49.996883, 49.303917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750805, 50.178177, 49.029484>,  <45.040524, 50.301418, 48.675083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750805, 50.178177, 49.029484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498020, 49.891235, 49.146805>,  <45.346348, 49.719070, 49.217197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498020, 49.891235, 49.146805>,  <45.750805, 50.178177, 49.029484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498020, 49.891235, 49.146805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530735, -0.676372, -0.510727,
		0.564751, -0.167096, 0.808167,
		-0.631962, -0.717356, 0.293298,
		45.308430, 49.676029, 49.234795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142963, 49.515141, 49.327553>,  <45.750805, 50.178177, 49.029484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142963, 49.515141, 49.327553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787285, 49.418949, 49.171860>,  <45.573879, 49.361233, 49.078445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787285, 49.418949, 49.171860>,  <46.142963, 49.515141, 49.327553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787285, 49.418949, 49.171860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418762, -0.770464, -0.480649,
		-0.184302, -0.590386, 0.785797,
		-0.889197, -0.240478, -0.389229,
		45.520527, 49.346806, 49.055092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958462, 49.570885, 49.663601>,  <46.142963, 49.515141, 49.327553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958462, 49.570885, 49.663601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718460, 49.878036, 49.753357>,  <46.574459, 50.062328, 49.807213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718460, 49.878036, 49.753357>,  <46.958462, 49.570885, 49.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718460, 49.878036, 49.753357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596472, 0.242479, 0.765131,
		0.533120, 0.592925, -0.603509,
		-0.600004, 0.767882, 0.224393,
		46.538460, 50.108402, 49.820675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134132, 50.298656, 49.578453>,  <46.958462, 49.570885, 49.663601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134132, 50.298656, 49.578453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891949, 50.281807, 49.896358>,  <46.746639, 50.271698, 50.087101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891949, 50.281807, 49.896358>,  <47.134132, 50.298656, 49.578453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891949, 50.281807, 49.896358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712133, 0.417211, 0.564625,
		-0.355370, 0.907833, -0.222603,
		-0.605457, -0.042128, 0.794762,
		46.710312, 50.269169, 50.134789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096111, 50.950012, 50.074703>,  <47.134132, 50.298656, 49.578453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096111, 50.950012, 50.074703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022430, 50.617138, 50.283905>,  <46.978222, 50.417412, 50.409424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022430, 50.617138, 50.283905>,  <47.096111, 50.950012, 50.074703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022430, 50.617138, 50.283905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687038, 0.271506, 0.673991,
		-0.702885, 0.483474, 0.521733,
		-0.184203, -0.832189, 0.523002,
		46.967171, 50.367481, 50.440807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878117, 51.066666, 50.807392>,  <47.096111, 50.950012, 50.074703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878117, 51.066666, 50.807392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059864, 50.713013, 50.763832>,  <47.168911, 50.500820, 50.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059864, 50.713013, 50.763832>,  <46.878117, 51.066666, 50.807392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059864, 50.713013, 50.763832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648267, 0.244324, 0.721148,
		-0.610984, -0.398263, 0.684167,
		0.454365, -0.884134, -0.108902,
		47.196175, 50.447773, 50.731163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909271, 50.671810, 51.388771>,  <46.878117, 51.066666, 50.807392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909271, 50.671810, 51.388771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205280, 50.537094, 51.155899>,  <47.382885, 50.456264, 51.016174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205280, 50.537094, 51.155899>,  <46.909271, 50.671810, 51.388771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205280, 50.537094, 51.155899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622028, 0.013486, 0.782879,
		-0.255816, -0.941483, 0.219474,
		0.740027, -0.336791, -0.582179,
		47.427288, 50.436058, 50.981247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374596, 50.016014, 51.647503>,  <46.909271, 50.671810, 51.388771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374596, 50.016014, 51.647503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573551, 50.291252, 51.436172>,  <47.692924, 50.456394, 51.309376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573551, 50.291252, 51.436172>,  <47.374596, 50.016014, 51.647503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573551, 50.291252, 51.436172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661590, 0.093076, 0.744067,
		0.561166, -0.719622, -0.408945,
		0.497384, 0.688100, -0.528326,
		47.722767, 50.497681, 51.277676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.124527, 49.821552, 51.704224>,  <47.374596, 50.016014, 51.647503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.124527, 49.821552, 51.704224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.087036, 50.207077, 51.604393>,  <48.064541, 50.438393, 51.544495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.087036, 50.207077, 51.604393>,  <48.124527, 49.821552, 51.704224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.087036, 50.207077, 51.604393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621469, 0.252481, 0.741640,
		0.777812, -0.085594, -0.622641,
		-0.093724, 0.963809, -0.249577,
		48.058918, 50.496220, 51.529518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.741264, 50.204906, 51.746231>,  <48.124527, 49.821552, 51.704224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.741264, 50.204906, 51.746231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.466179, 50.485535, 51.820904>,  <48.301128, 50.653912, 51.865707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.466179, 50.485535, 51.820904>,  <48.741264, 50.204906, 51.746231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.466179, 50.485535, 51.820904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550029, 0.335684, 0.764712,
		0.473833, 0.628582, -0.616739,
		-0.687713, 0.701570, 0.186681,
		48.259865, 50.696007, 51.876907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.904194, 50.960041, 51.811932>,  <48.741264, 50.204906, 51.746231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.904194, 50.960041, 51.811932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.593159, 50.927231, 52.061291>,  <48.406536, 50.907543, 52.210907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.593159, 50.927231, 52.061291>,  <48.904194, 50.960041, 51.811932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.593159, 50.927231, 52.061291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560712, 0.358182, 0.746531,
		-0.284525, 0.930041, -0.232526,
		-0.777591, -0.082027, 0.623397,
		48.359882, 50.902622, 52.248310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.598549, 51.650486, 51.998806>,  <48.904194, 50.960041, 51.811932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.598549, 51.650486, 51.998806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.569065, 51.361153, 52.273430>,  <48.551373, 51.187553, 52.438202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.569065, 51.361153, 52.273430>,  <48.598549, 51.650486, 51.998806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.569065, 51.361153, 52.273430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409646, 0.605710, 0.682133,
		-0.909262, 0.331527, 0.251661,
		-0.073712, -0.723330, 0.686557,
		48.546951, 51.144154, 52.479397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.328606, 51.826298, 52.688293>,  <48.598549, 51.650486, 51.998806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.328606, 51.826298, 52.688293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.603275, 51.539421, 52.735817>,  <48.768078, 51.367294, 52.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.603275, 51.539421, 52.735817>,  <48.328606, 51.826298, 52.688293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.603275, 51.539421, 52.735817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427013, 0.530183, 0.732506,
		-0.588339, -0.452258, 0.670313,
		0.686671, -0.717195, 0.118808,
		48.809277, 51.324265, 52.771458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.470837, 51.787659, 53.385258>,  <48.328606, 51.826298, 52.688293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.470837, 51.787659, 53.385258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.799324, 51.617447, 53.233192>,  <48.996418, 51.515320, 53.141953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.799324, 51.617447, 53.233192>,  <48.470837, 51.787659, 53.385258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.799324, 51.617447, 53.233192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548462, 0.404841, 0.731638,
		-0.157427, -0.809340, 0.565849,
		0.821222, -0.425527, -0.380159,
		49.045692, 51.489788, 53.119144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.602566, 51.411079, 53.895718>,  <48.470837, 51.787659, 53.385258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.602566, 51.411079, 53.895718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.898167, 51.563148, 53.673241>,  <49.075527, 51.654388, 53.539757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.898167, 51.563148, 53.673241>,  <48.602566, 51.411079, 53.895718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.898167, 51.563148, 53.673241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436928, 0.357945, 0.825209,
		0.512809, -0.852843, 0.098412,
		0.739000, 0.380176, -0.556188,
		49.119865, 51.677200, 53.506386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.175365, 51.912975, 54.100113>,  <48.602566, 51.411079, 53.895718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.175365, 51.912975, 54.100113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.082199, 52.227417, 54.329124>,  <49.026299, 52.416080, 54.466530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.082199, 52.227417, 54.329124>,  <49.175365, 51.912975, 54.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.082199, 52.227417, 54.329124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629785, 0.570521, -0.527140,
		-0.741027, 0.237790, -0.627961,
		-0.232916, 0.786106, 0.572528,
		49.012325, 52.463249, 54.500881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.095490, 52.448883, 53.656384>,  <49.175365, 51.912975, 54.100113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.095490, 52.448883, 53.656384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.156738, 52.638596, 54.003166>,  <49.193489, 52.752422, 54.211235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.156738, 52.638596, 54.003166>,  <49.095490, 52.448883, 53.656384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.156738, 52.638596, 54.003166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697894, 0.569221, -0.434663,
		-0.699641, 0.671600, -0.243836,
		0.153123, 0.474280, 0.866956,
		49.202675, 52.780880, 54.263252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.071838, 53.188370, 53.658859>,  <49.095490, 52.448883, 53.656384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.071838, 53.188370, 53.658859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.324154, 53.090412, 53.953377>,  <49.475544, 53.031639, 54.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.324154, 53.090412, 53.953377>,  <49.071838, 53.188370, 53.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.324154, 53.090412, 53.953377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732482, 0.501076, -0.460861,
		-0.256080, 0.830030, 0.495453,
		0.630788, -0.244893, 0.736297,
		49.513390, 53.016945, 54.174267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.374832, 53.780102, 53.874577>,  <49.071838, 53.188370, 53.658859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.374832, 53.780102, 53.874577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.620117, 53.479820, 53.972889>,  <49.767288, 53.299652, 54.031876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.620117, 53.479820, 53.972889>,  <49.374832, 53.780102, 53.874577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.620117, 53.479820, 53.972889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789581, 0.573445, -0.218457,
		0.023055, 0.328026, 0.944387,
		0.613213, -0.750707, 0.245782,
		49.804081, 53.254608, 54.046623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.936134, 54.065880, 54.245388>,  <49.374832, 53.780102, 53.874577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.936134, 54.065880, 54.245388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.067886, 53.707054, 54.127556>,  <50.146938, 53.491756, 54.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.067886, 53.707054, 54.127556>,  <49.936134, 54.065880, 54.245388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.067886, 53.707054, 54.127556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943357, 0.325821, 0.062600,
		0.039825, -0.298517, 0.953573,
		0.329381, -0.897066, -0.294584,
		50.166702, 53.437935, 54.039181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.084923, 53.581364, 54.833488>,  <49.936134, 54.065880, 54.245388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.084923, 53.581364, 54.833488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.437923, 53.431416, 54.719887>,  <50.649723, 53.341446, 54.651726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.437923, 53.431416, 54.719887>,  <50.084923, 53.581364, 54.833488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.437923, 53.431416, 54.719887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469163, 0.743786, 0.476097,
		0.032767, -0.553404, 0.832268,
		0.882503, -0.374869, -0.284009,
		50.702675, 53.318954, 54.634686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.478558, 53.482590, 55.414494>,  <50.084923, 53.581364, 54.833488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.478558, 53.482590, 55.414494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.727657, 53.517147, 55.103439>,  <50.877117, 53.537880, 54.916805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.727657, 53.517147, 55.103439>,  <50.478558, 53.482590, 55.414494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.727657, 53.517147, 55.103439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598106, 0.588203, 0.544322,
		0.504434, -0.804085, 0.314631,
		0.622748, 0.086392, -0.777638,
		50.914482, 53.543064, 54.870148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.146721, 53.292645, 55.501698>,  <50.478558, 53.482590, 55.414494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.146721, 53.292645, 55.501698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.177147, 53.553486, 55.199974>,  <51.195404, 53.709991, 55.018940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.177147, 53.553486, 55.199974>,  <51.146721, 53.292645, 55.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.177147, 53.553486, 55.199974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777652, 0.434685, 0.454209,
		0.624076, -0.621140, -0.474041,
		0.076069, 0.652100, -0.754307,
		51.199966, 53.749115, 54.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.694962, 53.302101, 55.025253>,  <51.146721, 53.292645, 55.501698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.694962, 53.302101, 55.025253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.014839, 53.249748, 54.790863>,  <52.206764, 53.218338, 54.650230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.014839, 53.249748, 54.790863>,  <51.694962, 53.302101, 55.025253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.014839, 53.249748, 54.790863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004034, -0.977100, 0.212740,
		-0.600397, -0.167763, -0.781907,
		0.799692, -0.130883, -0.585971,
		52.254745, 53.210484, 54.615070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.804520, 53.728294, 55.492813>,  <51.694962, 53.302101, 55.025253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.804520, 53.728294, 55.492813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.655155, 54.097218, 55.453003>,  <51.565536, 54.318573, 55.429115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.655155, 54.097218, 55.453003>,  <51.804520, 53.728294, 55.492813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.655155, 54.097218, 55.453003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065817, 0.133357, 0.988880,
		0.925327, 0.362712, -0.110501,
		-0.373415, 0.922310, -0.099526,
		51.543129, 54.373909, 55.423145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.972218, 54.160824, 56.135864>,  <51.804520, 53.728294, 55.492813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.972218, 54.160824, 56.135864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.152248, 53.918335, 56.398140>,  <52.260265, 53.772842, 56.555504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.152248, 53.918335, 56.398140>,  <51.972218, 54.160824, 56.135864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.152248, 53.918335, 56.398140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543290, -0.396843, -0.739832,
		0.708708, 0.689209, 0.150746,
		0.450076, -0.606224, 0.655687,
		52.287270, 53.736469, 56.594845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.542603, 53.955791, 55.746876>,  <51.972218, 54.160824, 56.135864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.542603, 53.955791, 55.746876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.528427, 53.722118, 56.071213>,  <52.519920, 53.581913, 56.265816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.528427, 53.722118, 56.071213>,  <52.542603, 53.955791, 55.746876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.528427, 53.722118, 56.071213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499531, -0.713082, -0.491917,
		0.865571, 0.387608, 0.317091,
		-0.035441, -0.584186, 0.810845,
		52.517796, 53.546864, 56.314465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.393715, 54.021152, 55.037983>,  <52.542603, 53.955791, 55.746876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.393715, 54.021152, 55.037983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.350529, 54.398064, 54.911205>,  <52.324615, 54.624210, 54.835140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.350529, 54.398064, 54.911205>,  <52.393715, 54.021152, 55.037983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.350529, 54.398064, 54.911205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853772, 0.251217, 0.456029,
		0.509328, -0.221359, -0.831616,
		-0.107970, 0.942279, -0.316942,
		52.318138, 54.680748, 54.816124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.899273, 54.270596, 54.692871>,  <52.393715, 54.021152, 55.037983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.899273, 54.270596, 54.692871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.717266, 54.560528, 54.899780>,  <52.608063, 54.734489, 55.023926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.717266, 54.560528, 54.899780>,  <52.899273, 54.270596, 54.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.717266, 54.560528, 54.899780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858739, 0.203453, 0.470292,
		0.235642, 0.658196, -0.715018,
		-0.455017, 0.724835, 0.517276,
		52.580761, 54.777977, 55.054962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.085155, 54.995991, 54.673706>,  <52.899273, 54.270596, 54.692871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.085155, 54.995991, 54.673706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.966530, 54.874462, 55.035866>,  <52.895355, 54.801544, 55.253162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.966530, 54.874462, 55.035866>,  <53.085155, 54.995991, 54.673706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.966530, 54.874462, 55.035866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931404, 0.117475, 0.344507,
		-0.211030, 0.945459, 0.248141,
		-0.296567, -0.303821, 0.905395,
		52.877560, 54.783318, 55.307484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.181282, 55.544064, 55.099319>,  <53.085155, 54.995991, 54.673706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.181282, 55.544064, 55.099319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.191376, 55.207695, 55.315544>,  <53.197430, 55.005875, 55.445278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.191376, 55.207695, 55.315544>,  <53.181282, 55.544064, 55.099319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.191376, 55.207695, 55.315544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943934, 0.198092, 0.264099,
		-0.329169, 0.503593, 0.798775,
		0.025232, -0.840924, 0.540564,
		53.198944, 54.955418, 55.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.361851, 55.614750, 55.805138>,  <53.181282, 55.544064, 55.099319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.361851, 55.614750, 55.805138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.528851, 55.265541, 55.704323>,  <53.629051, 55.056015, 55.643833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.528851, 55.265541, 55.704323>,  <53.361851, 55.614750, 55.805138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.528851, 55.265541, 55.704323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866327, 0.298736, 0.400293,
		-0.274171, -0.385472, 0.881046,
		0.417501, -0.873023, -0.252040,
		53.654102, 55.003635, 55.628712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.605766, 55.128902, 56.368660>,  <53.361851, 55.614750, 55.805138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.605766, 55.128902, 56.368660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.832348, 55.082333, 56.042328>,  <53.968296, 55.054390, 55.846527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.832348, 55.082333, 56.042328>,  <53.605766, 55.128902, 56.368660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.832348, 55.082333, 56.042328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822034, 0.149780, 0.549386,
		0.058233, -0.981841, 0.180549,
		0.566453, -0.116425, -0.815829,
		54.002285, 55.047405, 55.797581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.152184, 54.616264, 56.620972>,  <53.605766, 55.128902, 56.368660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.152184, 54.616264, 56.620972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.227638, 54.886925, 56.336281>,  <54.272911, 55.049320, 56.165466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.227638, 54.886925, 56.336281>,  <54.152184, 54.616264, 56.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.227638, 54.886925, 56.336281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951185, 0.054372, 0.303794,
		0.244260, -0.734295, -0.633363,
		0.188637, 0.676650, -0.711731,
		54.284229, 55.089920, 56.122761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.672951, 54.339165, 56.125786>,  <54.152184, 54.616264, 56.620972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.672951, 54.339165, 56.125786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.668083, 54.736950, 56.084045>,  <54.665161, 54.975620, 56.059002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.668083, 54.736950, 56.084045>,  <54.672951, 54.339165, 56.125786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.668083, 54.736950, 56.084045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999917, 0.011654, -0.005541,
		-0.004294, -0.104414, -0.994525,
		-0.012169, 0.994466, -0.104355,
		54.664433, 55.035290, 56.052738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.042217, 54.487186, 55.531414>,  <54.672951, 54.339165, 56.125786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.042217, 54.487186, 55.531414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.042145, 54.815987, 55.759209>,  <55.042103, 55.013268, 55.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.042145, 54.815987, 55.759209>,  <55.042217, 54.487186, 55.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.042145, 54.815987, 55.759209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998295, 0.033394, -0.047881,
		-0.058376, 0.568509, -0.820603,
		-0.000182, 0.821999, 0.569489,
		55.042091, 55.062588, 55.930054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.384853, 55.182148, 55.258167>,  <55.042217, 54.487186, 55.531414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.384853, 55.182148, 55.258167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.421967, 55.107151, 55.649315>,  <55.444233, 55.062153, 55.884003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.421967, 55.107151, 55.649315>,  <55.384853, 55.182148, 55.258167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.421967, 55.107151, 55.649315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979417, -0.159628, -0.123534,
		0.179258, 0.969208, 0.168826,
		0.092780, -0.187496, 0.977874,
		55.449802, 55.050903, 55.942677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.867577, 55.716057, 55.527554>,  <55.384853, 55.182148, 55.258167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.867577, 55.716057, 55.527554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.849030, 55.354229, 55.697075>,  <55.837902, 55.137131, 55.798786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.849030, 55.354229, 55.697075>,  <55.867577, 55.716057, 55.527554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.849030, 55.354229, 55.697075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970440, -0.141384, -0.195591,
		0.236844, 0.402202, 0.884386,
		-0.046371, -0.904568, 0.423799,
		55.835117, 55.082859, 55.824215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.812149, 56.127060, 56.124683>,  <55.867577, 55.716057, 55.527554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.812149, 56.127060, 56.124683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.964455, 55.900307, 56.416893>,  <56.055840, 55.764256, 56.592216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.964455, 55.900307, 56.416893>,  <55.812149, 56.127060, 56.124683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.964455, 55.900307, 56.416893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713463, -0.322447, -0.622092,
		0.588208, 0.758071, 0.281674,
		0.380765, -0.566884, 0.730521,
		56.078686, 55.730240, 56.636051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.484009, 56.316860, 56.273209>,  <55.812149, 56.127060, 56.124683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.484009, 56.316860, 56.273209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.416260, 55.923454, 56.298553>,  <56.375610, 55.687412, 56.313759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.416260, 55.923454, 56.298553>,  <56.484009, 56.316860, 56.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.416260, 55.923454, 56.298553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817219, -0.176089, -0.548767,
		0.550876, -0.041170, 0.833571,
		-0.169375, -0.983513, 0.063358,
		56.365448, 55.628399, 56.317562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.966949, 55.695164, 56.240654>,  <56.484009, 56.316860, 56.273209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.966949, 55.695164, 56.240654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.138107, 55.697186, 56.602180>,  <57.240803, 55.698399, 56.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.138107, 55.697186, 56.602180>,  <56.966949, 55.695164, 56.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.138107, 55.697186, 56.602180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888308, -0.186864, -0.419511,
		0.166772, 0.982373, -0.084445,
		0.427896, 0.005051, 0.903814,
		57.266476, 55.698700, 56.873325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.682899, 55.866150, 56.125572>,  <56.966949, 55.695164, 56.240654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.682899, 55.866150, 56.125572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.686089, 55.783978, 56.517029>,  <57.688000, 55.734673, 56.751904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.686089, 55.783978, 56.517029>,  <57.682899, 55.866150, 56.125572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.686089, 55.783978, 56.517029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988237, -0.147848, -0.039085,
		0.152719, 0.967439, 0.201840,
		0.007971, -0.205435, 0.978638,
		57.688480, 55.722347, 56.810619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.281525, 56.309101, 56.546181>,  <57.682899, 55.866150, 56.125572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.281525, 56.309101, 56.546181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.172157, 55.939495, 56.653099>,  <58.106537, 55.717731, 56.717251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.172157, 55.939495, 56.653099>,  <58.281525, 56.309101, 56.546181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.172157, 55.939495, 56.653099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928073, -0.326451, -0.179192,
		0.252833, 0.199073, 0.946808,
		-0.273414, -0.924013, 0.267292,
		58.090134, 55.662292, 56.733288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.156952, 56.337318, 56.658566>,  <58.281525, 56.309101, 56.546181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.156952, 56.337318, 56.658566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.215515, 56.716923, 56.546898>,  <59.250652, 56.944687, 56.479897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.215515, 56.716923, 56.546898>,  <59.156952, 56.337318, 56.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.215515, 56.716923, 56.546898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886721, -0.251005, -0.388230,
		-0.438509, -0.190709, -0.878259,
		0.146408, 0.949013, -0.279173,
		59.259438, 57.001625, 56.463146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.797825, 56.248920, 56.372574>,  <59.156952, 56.337318, 56.658566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.797825, 56.248920, 56.372574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.717987, 56.639065, 56.334991>,  <59.670082, 56.873154, 56.312443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.717987, 56.639065, 56.334991>,  <59.797825, 56.248920, 56.372574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.717987, 56.639065, 56.334991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934612, 0.160694, -0.317299,
		-0.294384, -0.151142, -0.943660,
		-0.199598, 0.975363, -0.093953,
		59.658108, 56.931675, 56.306805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.228409, 56.628918, 56.727829>,  <59.797825, 56.248920, 56.372574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.228409, 56.628918, 56.727829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.251534, 56.314285, 56.973740>,  <60.265408, 56.125507, 57.121288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.251534, 56.314285, 56.973740>,  <60.228409, 56.628918, 56.727829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.251534, 56.314285, 56.973740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908824, 0.296315, 0.293661,
		-0.413155, 0.541749, 0.731991,
		0.057809, -0.786579, 0.614778,
		60.268875, 56.078312, 57.158173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.302429, 56.848057, 57.367020>,  <60.228409, 56.628918, 56.727829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.302429, 56.848057, 57.367020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.461937, 56.483551, 57.325882>,  <60.557640, 56.264847, 57.301201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.461937, 56.483551, 57.325882>,  <60.302429, 56.848057, 57.367020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.461937, 56.483551, 57.325882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869339, 0.339934, 0.358740,
		-0.291949, -0.232458, 0.927755,
		0.398767, -0.911268, -0.102841,
		60.581566, 56.210171, 57.295029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.551197, 56.513142, 58.042301>,  <60.302429, 56.848057, 57.367020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.551197, 56.513142, 58.042301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.769104, 56.400536, 57.726334>,  <60.899849, 56.332973, 57.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.769104, 56.400536, 57.726334>,  <60.551197, 56.513142, 58.042301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.769104, 56.400536, 57.726334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826744, 0.338035, 0.449696,
		0.140426, -0.898044, 0.416891,
		0.544770, -0.281513, -0.789921,
		60.932533, 56.316082, 57.489357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.303303, 56.359337, 58.368870>,  <60.551197, 56.513142, 58.042301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.303303, 56.359337, 58.368870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.359154, 56.386669, 57.973732>,  <61.392666, 56.403069, 57.736649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.359154, 56.386669, 57.973732>,  <61.303303, 56.359337, 58.368870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.359154, 56.386669, 57.973732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832287, 0.532389, 0.154468,
		0.536471, -0.843738, 0.017472,
		0.139633, 0.068326, -0.987843,
		61.401043, 56.407169, 57.677380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.860592, 55.956177, 58.287632>,  <61.303303, 56.359337, 58.368870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.860592, 55.956177, 58.287632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.810501, 56.237755, 58.007980>,  <61.780445, 56.406700, 57.840191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.810501, 56.237755, 58.007980>,  <61.860592, 55.956177, 58.287632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.810501, 56.237755, 58.007980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961192, 0.260679, 0.090310,
		0.245821, -0.660688, -0.709270,
		-0.125226, 0.703945, -0.699128,
		61.772934, 56.448936, 57.798241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.193707, 55.838917, 57.587502>,  <61.860592, 55.956177, 58.287632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.193707, 55.838917, 57.587502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.164864, 56.232090, 57.655190>,  <62.147560, 56.467995, 57.695801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.164864, 56.232090, 57.655190>,  <62.193707, 55.838917, 57.587502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.164864, 56.232090, 57.655190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995597, 0.081120, -0.046965,
		-0.059891, 0.165089, -0.984459,
		-0.072105, 0.982937, 0.169221,
		62.143230, 56.526970, 57.705956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.541412, 56.135780, 57.077393>,  <62.193707, 55.838917, 57.587502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.541412, 56.135780, 57.077393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.504272, 56.394501, 57.380188>,  <62.481991, 56.549732, 57.561863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.504272, 56.394501, 57.380188>,  <62.541412, 56.135780, 57.077393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.504272, 56.394501, 57.380188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995055, 0.087222, 0.047519,
		-0.035290, 0.757653, -0.651703,
		-0.092846, 0.646803, 0.756984,
		62.476418, 56.588543, 57.607285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.884159, 56.831257, 56.953415>,  <62.541412, 56.135780, 57.077393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.884159, 56.831257, 56.953415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.864693, 56.738884, 57.342117>,  <62.853012, 56.683460, 57.575336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.864693, 56.738884, 57.342117>,  <62.884159, 56.831257, 56.953415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.864693, 56.738884, 57.342117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982288, 0.165189, 0.088450,
		-0.180949, 0.958845, 0.218802,
		-0.048666, -0.230931, 0.971752,
		62.850094, 56.669605, 57.633644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.226044, 57.427822, 57.242477>,  <62.884159, 56.831257, 56.953415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.226044, 57.427822, 57.242477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.224884, 57.101891, 57.474358>,  <63.224186, 56.906334, 57.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.224884, 57.101891, 57.474358>,  <63.226044, 57.427822, 57.242477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.224884, 57.101891, 57.474358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996123, 0.048610, 0.073316,
		-0.087919, 0.577664, 0.811526,
		-0.002903, -0.814826, 0.579698,
		63.224014, 56.857441, 57.648266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.551895, 57.617661, 57.923512>,  <63.226044, 57.427822, 57.242477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.551895, 57.617661, 57.923512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.577797, 57.227615, 57.838692>,  <63.593338, 56.993587, 57.787800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.577797, 57.227615, 57.838692>,  <63.551895, 57.617661, 57.923512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.577797, 57.227615, 57.838692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993539, 0.043149, 0.104970,
		-0.093208, -0.217472, 0.971606,
		0.064752, -0.975112, -0.212045,
		63.597221, 56.935081, 57.775078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.113541, 57.279903, 58.387634>,  <63.551895, 57.617661, 57.923512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.113541, 57.279903, 58.387634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.062271, 57.143028, 58.015297>,  <64.031509, 57.060902, 57.791893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.062271, 57.143028, 58.015297>,  <64.113541, 57.279903, 58.387634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.062271, 57.143028, 58.015297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985977, 0.057172, -0.156781,
		0.106867, -0.937890, 0.330064,
		-0.128173, -0.342190, -0.930848,
		64.023819, 57.040371, 57.736042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.508812, 56.765877, 58.710609>,  <64.113541, 57.279903, 58.387634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.508812, 56.765877, 58.710609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.786369, 57.036861, 58.612991>,  <64.952904, 57.199451, 58.554420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.786369, 57.036861, 58.612991>,  <64.508812, 56.765877, 58.710609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.786369, 57.036861, 58.612991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105045, 0.240048, 0.965061,
		0.712377, -0.695282, 0.095402,
		0.693891, 0.677466, -0.244041,
		64.994537, 57.240101, 58.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.162216, 56.811821, 59.020496>,  <64.508812, 56.765877, 58.710609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.162216, 56.811821, 59.020496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.456749, 57.016861, 58.843842>,  <65.633469, 57.139885, 58.737846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.456749, 57.016861, 58.843842>,  <65.162216, 56.811821, 59.020496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.456749, 57.016861, 58.843842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629687, -0.758008, 0.170055,
		-0.247596, -0.403313, -0.880929,
		0.736337, 0.512604, -0.441640,
		65.677650, 57.170643, 58.711349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.530563, 56.390438, 58.571552>,  <65.162216, 56.811821, 59.020496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.530563, 56.390438, 58.571552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.785545, 56.669037, 58.703331>,  <65.938538, 56.836197, 58.782398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.785545, 56.669037, 58.703331>,  <65.530563, 56.390438, 58.571552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.785545, 56.669037, 58.703331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679568, -0.709750, 0.185586,
		0.363083, 0.105576, -0.925756,
		0.637463, 0.696497, 0.329444,
		65.976784, 56.877987, 58.802166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.168358, 56.513206, 58.166168>,  <65.530563, 56.390438, 58.571552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.168358, 56.513206, 58.166168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.197533, 56.573917, 58.560455>,  <66.215034, 56.610344, 58.797028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.197533, 56.573917, 58.560455>,  <66.168358, 56.513206, 58.166168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.197533, 56.573917, 58.560455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538124, -0.838129, 0.089232,
		0.839704, 0.523932, -0.142802,
		0.072935, 0.151774, 0.985721,
		66.219414, 56.619450, 58.856171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.833282, 56.659599, 58.490959>,  <66.168358, 56.513206, 58.166168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.833282, 56.659599, 58.490959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.619949, 56.434624, 58.743690>,  <66.491951, 56.299637, 58.895329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.619949, 56.434624, 58.743690>,  <66.833282, 56.659599, 58.490959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.619949, 56.434624, 58.743690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732727, -0.680401, 0.012831,
		0.422682, 0.469803, 0.775000,
		-0.533339, -0.562441, 0.631831,
		66.459946, 56.265892, 58.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.274803, 56.517082, 59.016071>,  <66.833282, 56.659599, 58.490959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.274803, 56.517082, 59.016071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.028419, 56.203018, 58.990440>,  <66.880585, 56.014580, 58.975063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.028419, 56.203018, 58.990440>,  <67.274803, 56.517082, 59.016071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.028419, 56.203018, 58.990440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787437, -0.611285, -0.079203,
		0.023019, -0.099241, 0.994797,
		-0.615965, -0.785163, -0.064075,
		66.843628, 55.967468, 58.971218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.691566, 56.024895, 59.432220>,  <67.274803, 56.517082, 59.016071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.691566, 56.024895, 59.432220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.424782, 55.863503, 59.181664>,  <67.264709, 55.766666, 59.031330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.424782, 55.863503, 59.181664>,  <67.691566, 56.024895, 59.432220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.424782, 55.863503, 59.181664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688000, -0.656241, -0.309845,
		-0.286047, -0.637612, 0.715281,
		-0.666958, -0.403483, -0.626393,
		67.224693, 55.742458, 58.993744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.190025, 56.454086, 59.382549>,  <67.691566, 56.024895, 59.432220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.190025, 56.454086, 59.382549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.467255, 56.569405, 59.118263>,  <68.633591, 56.638596, 58.959690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.467255, 56.569405, 59.118263>,  <68.190025, 56.454086, 59.382549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.467255, 56.569405, 59.118263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720012, -0.321608, 0.614940,
		-0.035208, -0.901918, -0.430471,
		0.693068, 0.288293, -0.660714,
		68.675179, 56.655891, 58.920048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.688042, 55.820885, 59.077888>,  <68.190025, 56.454086, 59.382549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.688042, 55.820885, 59.077888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.845497, 56.188377, 59.065376>,  <68.939972, 56.408875, 59.057869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.845497, 56.188377, 59.065376>,  <68.688042, 55.820885, 59.077888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.845497, 56.188377, 59.065376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843455, -0.347439, 0.409720,
		0.365555, -0.187664, -0.911675,
		0.393642, 0.918732, -0.031278,
		68.963593, 56.463997, 59.055992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.285278, 55.962296, 58.647175>,  <68.688042, 55.820885, 59.077888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.285278, 55.962296, 58.647175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.275894, 56.177017, 58.984528>,  <69.270264, 56.305851, 59.186939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.275894, 56.177017, 58.984528>,  <69.285278, 55.962296, 58.647175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.275894, 56.177017, 58.984528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875036, -0.396969, 0.276998,
		0.483489, 0.744485, -0.460413,
		-0.023451, 0.536803, 0.843381,
		69.268860, 56.338058, 59.237541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.885170, 56.370701, 58.726677>,  <69.285278, 55.962296, 58.647175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.885170, 56.370701, 58.726677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735260, 56.345890, 59.096695>,  <69.645317, 56.331005, 59.318707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735260, 56.345890, 59.096695>,  <69.885170, 56.370701, 58.726677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.735260, 56.345890, 59.096695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897499, -0.274458, 0.345207,
		0.232473, 0.959596, 0.158528,
		-0.374769, -0.062027, 0.925041,
		69.622826, 56.327282, 59.374207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.272018, 56.726677, 59.191471>,  <69.885170, 56.370701, 58.726677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.272018, 56.726677, 59.191471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.106361, 56.392059, 59.334961>,  <70.006966, 56.191288, 59.421055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.106361, 56.392059, 59.334961>,  <70.272018, 56.726677, 59.191471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.106361, 56.392059, 59.334961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902968, -0.427218, 0.046195,
		0.114611, 0.343051, 0.932298,
		-0.414142, -0.836541, 0.358728,
		69.982117, 56.141098, 59.442581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.681793, 56.457497, 59.757946>,  <70.272018, 56.726677, 59.191471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.681793, 56.457497, 59.757946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.516830, 56.128174, 59.601952>,  <70.417854, 55.930580, 59.508354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.516830, 56.128174, 59.601952>,  <70.681793, 56.457497, 59.757946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.516830, 56.128174, 59.601952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900767, -0.432505, -0.039470,
		-0.136177, -0.367567, 0.919973,
		-0.412401, -0.823306, -0.389990,
		70.393112, 55.881184, 59.484955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.868889, 57.137791, 59.801334>,  <70.681793, 56.457497, 59.757946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.868889, 57.137791, 59.801334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.857483, 57.129654, 59.401581>,  <70.850639, 57.124771, 59.161728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.857483, 57.129654, 59.401581>,  <70.868889, 57.137791, 59.801334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.857483, 57.129654, 59.401581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374689, -0.926679, 0.029550,
		-0.926712, 0.375302, 0.018794,
		-0.028506, -0.020342, -0.999387,
		70.848930, 57.123550, 59.101765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.633827, 57.747803, 59.453339>,  <70.868889, 57.137791, 59.801334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.633827, 57.747803, 59.453339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.354507, 57.948460, 59.249084>,  <70.186920, 58.068855, 59.126534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.354507, 57.948460, 59.249084>,  <70.633827, 57.747803, 59.453339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.354507, 57.948460, 59.249084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571782, -0.038276, -0.819513,
		-0.430647, -0.864228, -0.260102,
		-0.698290, 0.501643, -0.510633,
		70.145020, 58.098953, 59.095894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.348099, 57.654655, 59.683594>,  <70.633827, 57.747803, 59.453339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.348099, 57.654655, 59.683594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.370613, 57.265785, 59.774544>,  <71.384125, 57.032463, 59.829113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.370613, 57.265785, 59.774544>,  <71.348099, 57.654655, 59.683594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.370613, 57.265785, 59.774544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980727, 0.096518, 0.169879,
		-0.187098, 0.213431, 0.958875,
		0.056291, -0.972179, 0.227376,
		71.387497, 56.974133, 59.842758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.698273, 57.530277, 60.365856>,  <71.348099, 57.654655, 59.683594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.698273, 57.530277, 60.365856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.721130, 57.204926, 60.134285>,  <71.734840, 57.009716, 59.995342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.721130, 57.204926, 60.134285>,  <71.698273, 57.530277, 60.365856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.721130, 57.204926, 60.134285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997105, 0.017354, 0.074027,
		-0.050165, -0.581481, 0.812012,
		0.057137, -0.813375, -0.578927,
		71.738274, 56.960915, 59.960606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.081947, 57.018276, 60.723579>,  <71.698273, 57.530277, 60.365856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.081947, 57.018276, 60.723579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.110199, 57.010143, 60.324661>,  <72.127151, 57.005264, 60.085312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.110199, 57.010143, 60.324661>,  <72.081947, 57.018276, 60.723579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.110199, 57.010143, 60.324661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988580, 0.134854, 0.067256,
		0.133121, -0.990657, 0.029624,
		0.070622, -0.020333, -0.997296,
		72.131386, 57.004044, 60.025471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.645920, 57.106915, 60.499020>,  <72.081947, 57.018276, 60.723579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.645920, 57.106915, 60.499020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.968246, 56.919514, 60.354156>,  <73.161644, 56.807072, 60.267239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.968246, 56.919514, 60.354156>,  <72.645920, 57.106915, 60.499020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.968246, 56.919514, 60.354156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015963, 0.628549, -0.777606,
		0.591940, 0.620832, 0.513978,
		0.805824, -0.468501, -0.362153,
		73.209991, 56.778965, 60.245510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.917084, 57.671169, 60.221588>,  <72.645920, 57.106915, 60.499020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.917084, 57.671169, 60.221588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.110382, 57.370533, 60.041992>,  <73.226364, 57.190151, 59.934235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.110382, 57.370533, 60.041992>,  <72.917084, 57.671169, 60.221588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.110382, 57.370533, 60.041992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191829, 0.591284, -0.783316,
		0.854210, 0.292405, 0.429912,
		0.483246, -0.751586, -0.448989,
		73.255356, 57.145058, 59.907295>
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
