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
	<36.561687, 53.403915, 50.621960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460373, 53.351868, 50.238518>,  <36.399582, 53.320641, 50.008453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460373, 53.351868, 50.238518>,  <36.561687, 53.403915, 50.621960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460373, 53.351868, 50.238518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286395, -0.956579, 0.054168,
		-0.924025, -0.260819, 0.279555,
		-0.253289, -0.130116, -0.958600,
		36.384388, 53.312832, 49.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000843, 53.033493, 50.521679>,  <36.561687, 53.403915, 50.621960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000843, 53.033493, 50.521679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275227, 52.981117, 50.235374>,  <36.439857, 52.949692, 50.063591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275227, 52.981117, 50.235374>,  <36.000843, 53.033493, 50.521679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275227, 52.981117, 50.235374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247851, -0.882805, 0.399031,
		-0.684127, -0.451121, -0.573115,
		0.685960, -0.130941, -0.715761,
		36.481014, 52.941833, 50.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914017, 52.309677, 50.223137>,  <36.000843, 53.033493, 50.521679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914017, 52.309677, 50.223137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291054, 52.436729, 50.181908>,  <36.517277, 52.512959, 50.157169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291054, 52.436729, 50.181908>,  <35.914017, 52.309677, 50.223137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291054, 52.436729, 50.181908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326841, -0.814252, 0.479759,
		0.068456, -0.485908, -0.871325,
		0.942597, 0.317627, -0.103074,
		36.573833, 52.532017, 50.150986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343170, 51.758984, 50.074692>,  <35.914017, 52.309677, 50.223137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343170, 51.758984, 50.074692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579231, 52.037521, 50.238068>,  <36.720867, 52.204643, 50.336094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579231, 52.037521, 50.238068>,  <36.343170, 51.758984, 50.074692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579231, 52.037521, 50.238068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314456, -0.664263, 0.678139,
		0.743533, -0.271766, -0.610985,
		0.590150, 0.696346, 0.408443,
		36.756275, 52.246426, 50.360600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065529, 51.522125, 50.231251>,  <36.343170, 51.758984, 50.074692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065529, 51.522125, 50.231251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987106, 51.825409, 50.479988>,  <36.940052, 52.007378, 50.629230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987106, 51.825409, 50.479988>,  <37.065529, 51.522125, 50.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987106, 51.825409, 50.479988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436774, -0.500242, 0.747654,
		0.877946, 0.418186, -0.233089,
		-0.196057, 0.758207, 0.621839,
		36.928288, 52.052872, 50.666538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666073, 51.819336, 50.603313>,  <37.065529, 51.522125, 50.231251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666073, 51.819336, 50.603313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350399, 51.921772, 50.826599>,  <37.160995, 51.983234, 50.960571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350399, 51.921772, 50.826599>,  <37.666073, 51.819336, 50.603313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350399, 51.921772, 50.826599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400638, -0.474229, 0.783961,
		0.465486, 0.842334, 0.271656,
		-0.789185, 0.256087, 0.558218,
		37.113644, 51.998596, 50.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932808, 52.114853, 51.186058>,  <37.666073, 51.819336, 50.603313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932808, 52.114853, 51.186058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571888, 51.952133, 51.243134>,  <37.355335, 51.854500, 51.277378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571888, 51.952133, 51.243134>,  <37.932808, 52.114853, 51.186058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571888, 51.952133, 51.243134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364083, -0.541836, 0.757534,
		-0.230852, 0.735476, 0.637010,
		-0.902303, -0.406803, 0.142691,
		37.301197, 51.830093, 51.285942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802647, 51.989391, 51.845932>,  <37.932808, 52.114853, 51.186058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802647, 51.989391, 51.845932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533508, 51.726692, 51.709717>,  <37.372025, 51.569073, 51.627987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533508, 51.726692, 51.709717>,  <37.802647, 51.989391, 51.845932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533508, 51.726692, 51.709717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269146, -0.646091, 0.714231,
		-0.689087, 0.388911, 0.611480,
		-0.672844, -0.656745, -0.340539,
		37.331654, 51.529667, 51.607555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958309, 52.414650, 52.491516>,  <37.802647, 51.989391, 51.845932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958309, 52.414650, 52.491516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310028, 52.516121, 52.330276>,  <38.521061, 52.577003, 52.233532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310028, 52.516121, 52.330276>,  <37.958309, 52.414650, 52.491516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310028, 52.516121, 52.330276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381594, 0.131215, 0.914969,
		0.285001, -0.958347, 0.018575,
		0.879296, 0.253679, -0.403096,
		38.573818, 52.592224, 52.209347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602375, 52.060696, 52.813015>,  <37.958309, 52.414650, 52.491516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602375, 52.060696, 52.813015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716358, 52.406532, 52.647469>,  <38.784748, 52.614033, 52.548141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716358, 52.406532, 52.647469>,  <38.602375, 52.060696, 52.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716358, 52.406532, 52.647469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478771, 0.245666, 0.842868,
		0.830407, -0.438331, -0.343934,
		0.284962, 0.864589, -0.413863,
		38.801846, 52.665909, 52.523312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418087, 52.214085, 52.840168>,  <38.602375, 52.060696, 52.813015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418087, 52.214085, 52.840168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246197, 52.572693, 52.883240>,  <39.143063, 52.787857, 52.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246197, 52.572693, 52.883240>,  <39.418087, 52.214085, 52.840168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246197, 52.572693, 52.883240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784066, 0.311330, 0.536949,
		0.447858, 0.315170, -0.836714,
		-0.429724, 0.896516, 0.107683,
		39.117279, 52.841648, 52.915546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914204, 52.664089, 52.762096>,  <39.418087, 52.214085, 52.840168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914204, 52.664089, 52.762096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632023, 52.861244, 52.965820>,  <39.462715, 52.979538, 53.088055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632023, 52.861244, 52.965820>,  <39.914204, 52.664089, 52.762096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632023, 52.861244, 52.965820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705224, 0.416483, 0.573760,
		0.070680, 0.763939, -0.641405,
		-0.705453, 0.492888, 0.509311,
		39.420387, 53.009109, 53.118614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004017, 53.454407, 52.818600>,  <39.914204, 52.664089, 52.762096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004017, 53.454407, 52.818600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851814, 53.291100, 53.150509>,  <39.760490, 53.193115, 53.349655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851814, 53.291100, 53.150509>,  <40.004017, 53.454407, 52.818600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851814, 53.291100, 53.150509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666807, 0.500579, 0.552077,
		-0.640765, 0.763371, 0.081763,
		-0.380511, -0.408272, 0.829774,
		39.737659, 53.168617, 53.399441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870605, 53.982685, 53.300030>,  <40.004017, 53.454407, 52.818600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870605, 53.982685, 53.300030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 53.658012, 53.520248>,  <39.995472, 53.463207, 53.652378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 53.658012, 53.520248>,  <39.870605, 53.982685, 53.300030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948647, 53.658012, 53.520248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691042, 0.512103, 0.510109,
		-0.695984, 0.280925, 0.660823,
		0.195107, -0.811684, 0.550547,
		40.007179, 53.414509, 53.685413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944046, 54.275967, 53.942081>,  <39.870605, 53.982685, 53.300030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944046, 54.275967, 53.942081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100197, 53.908775, 53.970139>,  <40.193886, 53.688461, 53.986973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100197, 53.908775, 53.970139>,  <39.944046, 54.275967, 53.942081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100197, 53.908775, 53.970139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760400, 0.364442, 0.537563,
		-0.519036, -0.156513, 0.840301,
		0.390377, -0.917979, 0.070146,
		40.217308, 53.633381, 53.991180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606308, 54.601940, 53.759579>,  <39.944046, 54.275967, 53.942081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606308, 54.601940, 53.759579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943050, 54.751167, 53.915573>,  <41.145096, 54.840702, 54.009171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943050, 54.751167, 53.915573>,  <40.606308, 54.601940, 53.759579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943050, 54.751167, 53.915573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442331, -0.062938, -0.894641,
		-0.309216, 0.925667, -0.218004,
		0.841860, 0.373068, 0.389989,
		41.195610, 54.863087, 54.032570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819172, 55.362156, 53.585197>,  <40.606308, 54.601940, 53.759579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819172, 55.362156, 53.585197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074722, 55.057476, 53.628365>,  <41.228054, 54.874668, 53.654266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074722, 55.057476, 53.628365>,  <40.819172, 55.362156, 53.585197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074722, 55.057476, 53.628365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329873, 0.144505, -0.932900,
		0.694998, 0.631607, 0.343585,
		0.638876, -0.761703, 0.107919,
		41.266384, 54.828964, 53.660740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361256, 55.694050, 53.995010>,  <40.819172, 55.362156, 53.585197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361256, 55.694050, 53.995010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707279, 55.509315, 54.073368>,  <41.914894, 55.398476, 54.120384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707279, 55.509315, 54.073368>,  <41.361256, 55.694050, 53.995010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707279, 55.509315, 54.073368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439120, 0.885911, 0.149444,
		-0.242567, -0.043256, 0.969169,
		0.865063, -0.461833, 0.195899,
		41.966797, 55.370766, 54.132137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635662, 56.150681, 54.472534>,  <41.361256, 55.694050, 53.995010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635662, 56.150681, 54.472534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927563, 55.894138, 54.377769>,  <42.102703, 55.740215, 54.320911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927563, 55.894138, 54.377769>,  <41.635662, 56.150681, 54.472534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927563, 55.894138, 54.377769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670522, 0.739068, 0.064639,
		0.133638, -0.206025, 0.969379,
		0.729754, -0.641352, -0.236912,
		42.146488, 55.701733, 54.306694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167557, 56.201553, 55.000286>,  <41.635662, 56.150681, 54.472534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167557, 56.201553, 55.000286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325470, 56.078888, 54.653854>,  <42.420219, 56.005287, 54.445995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325470, 56.078888, 54.653854>,  <42.167557, 56.201553, 55.000286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325470, 56.078888, 54.653854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607095, 0.794616, -0.004632,
		0.689624, -0.523966, 0.499878,
		0.394784, -0.306668, -0.866083,
		42.443905, 55.986889, 54.394028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834263, 56.321835, 55.071636>,  <42.167557, 56.201553, 55.000286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834263, 56.321835, 55.071636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715733, 56.358547, 54.691368>,  <42.644615, 56.380573, 54.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715733, 56.358547, 54.691368>,  <42.834263, 56.321835, 55.071636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715733, 56.358547, 54.691368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485068, 0.871905, -0.067016,
		0.822741, -0.480997, -0.302885,
		-0.296321, 0.091783, -0.950668,
		42.626835, 56.386082, 54.406166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438431, 56.654922, 54.672646>,  <42.834263, 56.321835, 55.071636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438431, 56.654922, 54.672646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466858, 57.052593, 54.640266>,  <43.483913, 57.291195, 54.620838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466858, 57.052593, 54.640266>,  <43.438431, 56.654922, 54.672646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466858, 57.052593, 54.640266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062095, 0.085405, 0.994410,
		0.995537, -0.065644, 0.067803,
		0.071068, 0.994181, -0.080948,
		43.488178, 57.350849, 54.615982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780685, 57.150928, 55.087700>,  <43.438431, 56.654922, 54.672646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780685, 57.150928, 55.087700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068222, 56.893200, 55.192093>,  <44.240746, 56.738564, 55.254730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068222, 56.893200, 55.192093>,  <43.780685, 57.150928, 55.087700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068222, 56.893200, 55.192093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610201, 0.764685, 0.207151,
		-0.333042, 0.010343, 0.942855,
		0.718845, -0.644321, 0.260984,
		44.283875, 56.699905, 55.270390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297634, 57.576191, 55.437160>,  <43.780685, 57.150928, 55.087700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297634, 57.576191, 55.437160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495136, 57.228706, 55.421448>,  <44.613636, 57.020214, 55.412018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495136, 57.228706, 55.421448>,  <44.297634, 57.576191, 55.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495136, 57.228706, 55.421448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693310, 0.365989, 0.620785,
		-0.524906, -0.333752, 0.782996,
		0.493756, -0.868713, -0.039284,
		44.643265, 56.968094, 55.409664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494011, 57.461800, 56.123924>,  <44.297634, 57.576191, 55.437160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494011, 57.461800, 56.123924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738190, 57.276474, 55.866959>,  <44.884697, 57.165279, 55.712780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738190, 57.276474, 55.866959>,  <44.494011, 57.461800, 56.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738190, 57.276474, 55.866959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782740, 0.228863, 0.578739,
		-0.121112, -0.856134, 0.502362,
		0.610450, -0.463311, -0.642412,
		44.921326, 57.137482, 55.674236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048759, 56.909546, 56.282421>,  <44.494011, 57.461800, 56.123924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048759, 56.909546, 56.282421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160423, 57.192093, 56.022232>,  <45.227421, 57.361622, 55.866119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160423, 57.192093, 56.022232>,  <45.048759, 56.909546, 56.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160423, 57.192093, 56.022232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677345, 0.335299, 0.654811,
		0.680641, -0.623390, -0.384854,
		0.279162, 0.706370, -0.650469,
		45.244171, 57.404003, 55.827091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857792, 56.886154, 56.158260>,  <45.048759, 56.909546, 56.282421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857792, 56.886154, 56.158260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736591, 57.259235, 56.080017>,  <45.663872, 57.483082, 56.033073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736591, 57.259235, 56.080017>,  <45.857792, 56.886154, 56.158260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736591, 57.259235, 56.080017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786011, 0.360651, 0.502112,
		0.538865, -0.001607, -0.842390,
		-0.303002, 0.932699, -0.195605,
		45.645691, 57.539043, 56.021336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292454, 57.262642, 55.805550>,  <45.857792, 56.886154, 56.158260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292454, 57.262642, 55.805550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110050, 57.550774, 56.014618>,  <46.000610, 57.723652, 56.140057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110050, 57.550774, 56.014618>,  <46.292454, 57.262642, 55.805550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110050, 57.550774, 56.014618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872620, 0.246468, 0.421648,
		0.174906, 0.648364, -0.740967,
		-0.456006, 0.720331, 0.522667,
		45.973248, 57.766872, 56.171417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583485, 57.935150, 55.673611>,  <46.292454, 57.262642, 55.805550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583485, 57.935150, 55.673611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474689, 57.888084, 56.055641>,  <46.409412, 57.859844, 56.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474689, 57.888084, 56.055641>,  <46.583485, 57.935150, 55.673611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474689, 57.888084, 56.055641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920760, 0.256641, 0.293832,
		-0.279686, 0.959318, 0.038539,
		-0.271988, -0.117666, 0.955080,
		46.393093, 57.852783, 56.342167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851284, 58.532791, 56.116215>,  <46.583485, 57.935150, 55.673611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851284, 58.532791, 56.116215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816608, 58.200191, 56.335701>,  <46.795803, 58.000633, 56.467392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816608, 58.200191, 56.335701>,  <46.851284, 58.532791, 56.116215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816608, 58.200191, 56.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894518, 0.177492, 0.410285,
		-0.438546, 0.526407, 0.728405,
		-0.086691, -0.831500, 0.548719,
		46.790600, 57.950741, 56.500317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920692, 58.699955, 56.788609>,  <46.851284, 58.532791, 56.116215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920692, 58.699955, 56.788609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039371, 58.330765, 56.690552>,  <47.110577, 58.109253, 56.631718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039371, 58.330765, 56.690552>,  <46.920692, 58.699955, 56.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039371, 58.330765, 56.690552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938235, 0.233875, 0.254987,
		-0.178012, -0.305655, 0.935354,
		0.296694, -0.922972, -0.245144,
		47.128380, 58.053875, 56.617008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297256, 58.175453, 57.345764>,  <46.920692, 58.699955, 56.788609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297256, 58.175453, 57.345764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429588, 58.144691, 56.969543>,  <47.508987, 58.126232, 56.743813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429588, 58.144691, 56.969543>,  <47.297256, 58.175453, 57.345764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.429588, 58.144691, 56.969543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919931, 0.248528, 0.303251,
		0.210431, -0.965567, 0.152970,
		0.330826, -0.076908, -0.940553,
		47.528835, 58.121620, 56.687378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.971268, 57.986111, 57.405788>,  <47.297256, 58.175453, 57.345764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.971268, 57.986111, 57.405788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.937462, 58.193031, 57.065140>,  <47.917179, 58.317184, 56.860752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.937462, 58.193031, 57.065140>,  <47.971268, 57.986111, 57.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.937462, 58.193031, 57.065140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954964, 0.286019, 0.078972,
		0.284432, -0.806592, -0.518178,
		-0.084511, 0.517303, -0.851619,
		47.912109, 58.348221, 56.809654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.584808, 57.877178, 56.988655>,  <47.971268, 57.986111, 57.405788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.584808, 57.877178, 56.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.425854, 58.220890, 56.859825>,  <48.330482, 58.427116, 56.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.425854, 58.220890, 56.859825>,  <48.584808, 57.877178, 56.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.425854, 58.220890, 56.859825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903060, 0.428530, 0.029069,
		0.162997, -0.279300, -0.946268,
		-0.397385, 0.859275, -0.322073,
		48.306637, 58.478672, 56.763203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.934002, 58.115826, 56.338234>,  <48.584808, 57.877178, 56.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.934002, 58.115826, 56.338234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.780914, 58.407570, 56.565056>,  <48.689060, 58.582619, 56.701149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.780914, 58.407570, 56.565056>,  <48.934002, 58.115826, 56.338234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.780914, 58.407570, 56.565056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901638, 0.428700, 0.057138,
		-0.201423, 0.533148, -0.821694,
		-0.382723, 0.729362, 0.567057,
		48.666096, 58.626377, 56.735172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.020531, 58.843613, 56.018639>,  <48.934002, 58.115826, 56.338234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.020531, 58.843613, 56.018639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.006145, 58.815350, 56.417381>,  <48.997517, 58.798393, 56.656628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.006145, 58.815350, 56.417381>,  <49.020531, 58.843613, 56.018639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.006145, 58.815350, 56.417381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927606, 0.368776, 0.059598,
		-0.371826, 0.926829, 0.052278,
		-0.035959, -0.070653, 0.996853,
		48.995358, 58.794155, 56.716438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.524258, 59.144176, 55.577175>,  <49.020531, 58.843613, 56.018639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.524258, 59.144176, 55.577175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.628387, 59.247238, 55.204971>,  <49.690865, 59.309074, 54.981651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.628387, 59.247238, 55.204971>,  <49.524258, 59.144176, 55.577175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.628387, 59.247238, 55.204971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666649, 0.649177, 0.366262,
		0.698435, -0.715668, -0.002772,
		0.260323, 0.257658, -0.930508,
		49.706486, 59.324535, 54.925819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.273487, 59.192543, 55.534405>,  <49.524258, 59.144176, 55.577175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.273487, 59.192543, 55.534405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.149586, 59.430779, 55.237938>,  <50.075245, 59.573719, 55.060059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.149586, 59.430779, 55.237938>,  <50.273487, 59.192543, 55.534405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.149586, 59.430779, 55.237938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634804, 0.709871, 0.305135,
		0.707867, -0.375978, -0.597968,
		-0.309756, 0.595587, -0.741166,
		50.056660, 59.609455, 55.015587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.783798, 59.271690, 54.956100>,  <50.273487, 59.192543, 55.534405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.783798, 59.271690, 54.956100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.549400, 59.584446, 55.041191>,  <50.408760, 59.772099, 55.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.549400, 59.584446, 55.041191>,  <50.783798, 59.271690, 54.956100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.549400, 59.584446, 55.041191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809969, 0.557547, 0.181913,
		0.023629, 0.278905, -0.960028,
		-0.585997, 0.781891, 0.212730,
		50.373600, 59.819012, 55.105011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.894608, 59.768719, 54.514828>,  <50.783798, 59.271690, 54.956100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.894608, 59.768719, 54.514828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.803661, 59.876007, 54.889286>,  <50.749096, 59.940380, 55.113960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.803661, 59.876007, 54.889286>,  <50.894608, 59.768719, 54.514828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.803661, 59.876007, 54.889286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924709, 0.360868, 0.121190,
		-0.305318, 0.893213, -0.330077,
		-0.227363, 0.268224, 0.936142,
		50.735451, 59.956474, 55.170128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.937164, 60.509495, 54.619076>,  <50.894608, 59.768719, 54.514828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.937164, 60.509495, 54.619076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.031643, 60.294434, 54.942837>,  <51.088329, 60.165398, 55.137093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.031643, 60.294434, 54.942837>,  <50.937164, 60.509495, 54.619076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.031643, 60.294434, 54.942837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943236, 0.327012, -0.058036,
		-0.233483, 0.777170, 0.584373,
		0.236201, -0.537652, 0.809407,
		51.102505, 60.133137, 55.185658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.331886, 60.941879, 55.072075>,  <50.937164, 60.509495, 54.619076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.331886, 60.941879, 55.072075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.432766, 60.558029, 55.121887>,  <51.493294, 60.327717, 55.151775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.432766, 60.558029, 55.121887>,  <51.331886, 60.941879, 55.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.432766, 60.558029, 55.121887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955554, 0.226666, -0.188518,
		0.152681, 0.166537, 0.974143,
		0.252201, -0.959629, 0.124528,
		51.508427, 60.270142, 55.159245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.784367, 60.701515, 55.696728>,  <51.331886, 60.941879, 55.072075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.784367, 60.701515, 55.696728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.835480, 60.548973, 55.330505>,  <51.866146, 60.457447, 55.110771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.835480, 60.548973, 55.330505>,  <51.784367, 60.701515, 55.696728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.835480, 60.548973, 55.330505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981567, 0.180904, 0.061642,
		0.142120, -0.906556, 0.397440,
		0.127780, -0.381353, -0.915556,
		51.873814, 60.434566, 55.055840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.495308, 60.651329, 55.768608>,  <51.784367, 60.701515, 55.696728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.495308, 60.651329, 55.768608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.424774, 60.467697, 55.420319>,  <52.382454, 60.357517, 55.211346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.424774, 60.467697, 55.420319>,  <52.495308, 60.651329, 55.768608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.424774, 60.467697, 55.420319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839746, 0.391349, -0.376394,
		0.513549, -0.797556, 0.316499,
		-0.176334, -0.459075, -0.870722,
		52.371876, 60.329975, 55.159103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.192921, 60.429585, 55.516804>,  <52.495308, 60.651329, 55.768608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.192921, 60.429585, 55.516804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.936810, 60.397202, 55.211258>,  <52.783142, 60.377773, 55.027931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.936810, 60.397202, 55.211258>,  <53.192921, 60.429585, 55.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.936810, 60.397202, 55.211258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758142, 0.093326, -0.645376,
		0.123536, -0.992339, 0.001622,
		-0.640280, -0.080957, -0.763863,
		52.744724, 60.372913, 54.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.842766, 60.211090, 55.929169>,  <53.192921, 60.429585, 55.516804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.842766, 60.211090, 55.929169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.130051, 60.485897, 55.973312>,  <54.302422, 60.650780, 55.999798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.130051, 60.485897, 55.973312>,  <53.842766, 60.211090, 55.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.130051, 60.485897, 55.973312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693115, -0.720340, -0.026487,
		0.061299, 0.095515, -0.993539,
		0.718216, 0.687013, 0.110359,
		54.345516, 60.692001, 56.006420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.348095, 60.189026, 55.319881>,  <53.842766, 60.211090, 55.929169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.348095, 60.189026, 55.319881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.528915, 60.335415, 55.645264>,  <54.637409, 60.423248, 55.840492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.528915, 60.335415, 55.645264>,  <54.348095, 60.189026, 55.319881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.528915, 60.335415, 55.645264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734104, -0.670679, -0.106215,
		0.506697, 0.645177, -0.571843,
		0.452050, 0.365973, 0.813458,
		54.664532, 60.445206, 55.889301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.072636, 60.446030, 55.132824>,  <54.348095, 60.189026, 55.319881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.072636, 60.446030, 55.132824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.012329, 60.302277, 55.501198>,  <54.976147, 60.216026, 55.722221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.012329, 60.302277, 55.501198>,  <55.072636, 60.446030, 55.132824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.012329, 60.302277, 55.501198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638347, -0.746715, -0.186893,
		0.754839, 0.559697, 0.341990,
		-0.150766, -0.359382, 0.920931,
		54.967098, 60.194462, 55.777477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.634632, 60.556793, 55.467834>,  <55.072636, 60.446030, 55.132824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.634632, 60.556793, 55.467834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433563, 60.219940, 55.545959>,  <55.312923, 60.017830, 55.592834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433563, 60.219940, 55.545959>,  <55.634632, 60.556793, 55.467834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.433563, 60.219940, 55.545959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750357, -0.537220, -0.385174,
		0.429290, -0.047064, 0.901940,
		-0.502668, -0.842128, 0.195308,
		55.282764, 59.967300, 55.604553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.062054, 60.128136, 55.824291>,  <55.634632, 60.556793, 55.467834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.062054, 60.128136, 55.824291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.829086, 59.897125, 55.595467>,  <55.689304, 59.758518, 55.458172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.829086, 59.897125, 55.595467>,  <56.062054, 60.128136, 55.824291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.829086, 59.897125, 55.595467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791018, -0.564800, -0.235143,
		-0.187296, -0.589458, 0.785786,
		-0.582419, -0.577529, -0.572057,
		55.654362, 59.723866, 55.423851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.159996, 59.506302, 56.039711>,  <56.062054, 60.128136, 55.824291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.159996, 59.506302, 56.039711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.056221, 59.512947, 55.653465>,  <55.993958, 59.516933, 55.421719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.056221, 59.512947, 55.653465>,  <56.159996, 59.506302, 56.039711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.056221, 59.512947, 55.653465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822448, -0.520303, -0.229924,
		-0.506233, -0.853820, 0.121321,
		-0.259437, 0.016615, -0.965617,
		55.978390, 59.517933, 55.363781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.196579, 58.888813, 55.746208>,  <56.159996, 59.506302, 56.039711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.196579, 58.888813, 55.746208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.248306, 59.139206, 55.438591>,  <56.279343, 59.289440, 55.254021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.248306, 59.139206, 55.438591>,  <56.196579, 58.888813, 55.746208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.248306, 59.139206, 55.438591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777240, -0.545598, -0.313403,
		-0.615771, -0.557200, -0.557094,
		0.129322, 0.625980, -0.769041,
		56.287102, 59.327000, 55.207878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.212891, 58.472263, 55.122345>,  <56.196579, 58.888813, 55.746208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.212891, 58.472263, 55.122345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.393593, 58.823853, 55.061264>,  <56.502014, 59.034805, 55.024616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.393593, 58.823853, 55.061264>,  <56.212891, 58.472263, 55.122345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.393593, 58.823853, 55.061264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766780, -0.470037, -0.437165,
		-0.456032, 0.080405, -0.886324,
		0.451755, 0.878977, -0.152700,
		56.529118, 59.087547, 55.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.554077, 58.518826, 54.408031>,  <56.212891, 58.472263, 55.122345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.554077, 58.518826, 54.408031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.744080, 58.761070, 54.663406>,  <56.858082, 58.906418, 54.816631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.744080, 58.761070, 54.663406>,  <56.554077, 58.518826, 54.408031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.744080, 58.761070, 54.663406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875211, -0.400568, -0.271202,
		0.091496, 0.687591, -0.720310,
		0.475010, 0.605610, 0.638438,
		56.886581, 58.942753, 54.854939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.342285, 58.542717, 54.143993>,  <56.554077, 58.518826, 54.408031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.342285, 58.542717, 54.143993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.416718, 58.784405, 54.453907>,  <57.461376, 58.929417, 54.639854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.416718, 58.784405, 54.453907>,  <57.342285, 58.542717, 54.143993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.416718, 58.784405, 54.453907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982328, -0.098275, -0.159291,
		-0.020104, 0.790738, -0.611825,
		0.186085, 0.604215, 0.774788,
		57.472542, 58.965668, 54.686344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.693623, 59.297340, 54.117374>,  <57.342285, 58.542717, 54.143993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.693623, 59.297340, 54.117374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.771217, 59.087753, 54.449116>,  <57.817772, 58.962002, 54.648159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.771217, 59.087753, 54.449116>,  <57.693623, 59.297340, 54.117374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.771217, 59.087753, 54.449116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962338, -0.062500, -0.264576,
		0.190465, 0.849439, 0.492114,
		0.193984, -0.523972, 0.829351,
		57.829414, 58.930561, 54.697922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.190205, 59.642433, 54.624378>,  <57.693623, 59.297340, 54.117374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.190205, 59.642433, 54.624378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.222588, 59.244923, 54.654972>,  <58.242016, 59.006416, 54.673328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.222588, 59.244923, 54.654972>,  <58.190205, 59.642433, 54.624378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.222588, 59.244923, 54.654972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936827, 0.049667, -0.346249,
		0.340296, 0.099684, 0.935020,
		0.080955, -0.993779, 0.076486,
		58.246876, 58.946789, 54.677917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.782234, 59.544514, 54.915157>,  <58.190205, 59.642433, 54.624378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.782234, 59.544514, 54.915157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.695396, 59.227119, 54.687737>,  <58.643291, 59.036682, 54.551285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.695396, 59.227119, 54.687737>,  <58.782234, 59.544514, 54.915157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.695396, 59.227119, 54.687737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920411, 0.027605, -0.389977,
		0.325135, -0.607968, 0.724336,
		-0.217098, -0.793482, -0.568555,
		58.630268, 58.989075, 54.517170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.132534, 58.998859, 55.091663>,  <58.782234, 59.544514, 54.915157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.132534, 58.998859, 55.091663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.042999, 58.996025, 54.701824>,  <58.989277, 58.994324, 54.467918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.042999, 58.996025, 54.701824>,  <59.132534, 58.998859, 55.091663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.042999, 58.996025, 54.701824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973641, 0.043342, -0.223931,
		0.043825, -0.999035, -0.002817,
		-0.223838, -0.007071, -0.974601,
		58.975849, 58.993900, 54.409443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.527119, 58.518185, 54.651402>,  <59.132534, 58.998859, 55.091663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.527119, 58.518185, 54.651402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.411713, 58.772026, 54.364616>,  <59.342468, 58.924332, 54.192547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.411713, 58.772026, 54.364616>,  <59.527119, 58.518185, 54.651402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.411713, 58.772026, 54.364616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947299, 0.080322, -0.310116,
		-0.139213, -0.768653, -0.624333,
		-0.288519, 0.634602, -0.716963,
		59.325157, 58.962406, 54.149529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.206543, 58.874069, 54.384430>,  <59.527119, 58.518185, 54.651402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.206543, 58.874069, 54.384430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.526268, 59.072662, 54.519844>,  <60.718102, 59.191818, 54.601093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.526268, 59.072662, 54.519844>,  <60.206543, 58.874069, 54.384430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.526268, 59.072662, 54.519844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578453, 0.483102, 0.657271,
		0.162777, -0.721190, 0.673341,
		0.799310, 0.496485, 0.338536,
		60.766060, 59.221607, 54.621407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.587238, 58.637199, 54.975861>,  <60.206543, 58.874069, 54.384430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.587238, 58.637199, 54.975861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.779381, 58.609360, 55.325584>,  <60.894665, 58.592655, 55.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.779381, 58.609360, 55.325584>,  <60.587238, 58.637199, 54.975861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.779381, 58.609360, 55.325584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038646, 0.994199, 0.100378,
		-0.876223, -0.082005, 0.474877,
		0.480354, -0.069602, 0.874309,
		60.923489, 58.588478, 55.587875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.146500, 58.752106, 55.448395>,  <60.587238, 58.637199, 54.975861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.146500, 58.752106, 55.448395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.521385, 58.867149, 55.527306>,  <60.746315, 58.936176, 55.574654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.521385, 58.867149, 55.527306>,  <60.146500, 58.752106, 55.448395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.521385, 58.867149, 55.527306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289940, 0.956883, -0.017592,
		-0.193834, -0.040713, 0.980189,
		0.937210, 0.287606, 0.197281,
		60.802547, 58.953430, 55.586491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.119350, 59.175167, 56.096195>,  <60.146500, 58.752106, 55.448395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.119350, 59.175167, 56.096195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.410599, 59.274471, 55.840630>,  <60.585346, 59.334053, 55.687290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.410599, 59.274471, 55.840630>,  <60.119350, 59.175167, 56.096195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.410599, 59.274471, 55.840630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393710, 0.914484, -0.093338,
		0.561101, 0.319506, 0.763597,
		0.728120, 0.248264, -0.638911,
		60.629036, 59.348949, 55.648956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.249672, 59.949600, 56.235027>,  <60.119350, 59.175167, 56.096195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.249672, 59.949600, 56.235027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.363174, 59.905636, 55.853996>,  <60.431278, 59.879257, 55.625378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.363174, 59.905636, 55.853996>,  <60.249672, 59.949600, 56.235027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.363174, 59.905636, 55.853996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355265, 0.910662, -0.210907,
		0.890655, 0.398263, 0.219360,
		0.283759, -0.109914, -0.952575,
		60.448303, 59.872662, 55.568222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.771378, 60.507050, 55.966251>,  <60.249672, 59.949600, 56.235027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.771378, 60.507050, 55.966251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.538429, 60.354225, 55.679230>,  <60.398663, 60.262531, 55.507019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.538429, 60.354225, 55.679230>,  <60.771378, 60.507050, 55.966251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.538429, 60.354225, 55.679230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383908, 0.907304, -0.171508,
		0.716564, 0.175593, -0.675058,
		-0.582367, -0.382057, -0.717552,
		60.363720, 60.239609, 55.463963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.267441, 60.197731, 56.536781>,  <60.771378, 60.507050, 55.966251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.267441, 60.197731, 56.536781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.547577, 60.082428, 56.275574>,  <61.715660, 60.013248, 56.118851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.547577, 60.082428, 56.275574>,  <61.267441, 60.197731, 56.536781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.547577, 60.082428, 56.275574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263017, -0.746259, 0.611489,
		-0.663584, -0.600006, -0.446821,
		0.700342, -0.288253, -0.653017,
		61.757679, 59.995953, 56.079670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.238750, 59.432102, 56.745399>,  <61.267441, 60.197731, 56.536781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.238750, 59.432102, 56.745399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.581963, 59.525314, 56.562325>,  <61.787891, 59.581242, 56.452480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.581963, 59.525314, 56.562325>,  <61.238750, 59.432102, 56.745399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.581963, 59.525314, 56.562325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328824, -0.933807, 0.140997,
		-0.394538, -0.271480, -0.877860,
		0.858030, 0.233032, -0.457691,
		61.839371, 59.595222, 56.425018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.385975, 58.975605, 56.200977>,  <61.238750, 59.432102, 56.745399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.385975, 58.975605, 56.200977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.721062, 59.138535, 56.346481>,  <61.922112, 59.236294, 56.433784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.721062, 59.138535, 56.346481>,  <61.385975, 58.975605, 56.200977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.721062, 59.138535, 56.346481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259960, -0.883216, 0.390320,
		0.480265, -0.232414, -0.845772,
		0.837715, 0.407324, 0.363759,
		61.972378, 59.260731, 56.455608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.941692, 58.522335, 56.076168>,  <61.385975, 58.975605, 56.200977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.941692, 58.522335, 56.076168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.036674, 58.768196, 56.377052>,  <62.093662, 58.915714, 56.557583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.036674, 58.768196, 56.377052>,  <61.941692, 58.522335, 56.076168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.036674, 58.768196, 56.377052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291559, -0.783750, 0.548388,
		0.926611, 0.089095, -0.365313,
		0.237456, 0.614652, 0.752208,
		62.107910, 58.952591, 56.602715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.766438, 58.488770, 56.361477>,  <61.941692, 58.522335, 56.076168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.766438, 58.488770, 56.361477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.507790, 58.599167, 56.645927>,  <62.352600, 58.665405, 56.816597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.507790, 58.599167, 56.645927>,  <62.766438, 58.488770, 56.361477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.507790, 58.599167, 56.645927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249432, -0.804502, 0.539036,
		0.720876, 0.525932, 0.451369,
		-0.646623, 0.275992, 0.711130,
		62.313801, 58.681965, 56.859268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.093922, 58.776497, 57.003075>,  <62.766438, 58.488770, 56.361477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.093922, 58.776497, 57.003075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.745461, 58.590134, 57.065086>,  <62.536385, 58.478317, 57.102295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.745461, 58.590134, 57.065086>,  <63.093922, 58.776497, 57.003075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.745461, 58.590134, 57.065086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437868, -0.594238, 0.674650,
		-0.222198, 0.655602, 0.721674,
		-0.871148, -0.465904, 0.155029,
		62.484116, 58.450363, 57.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.223171, 58.562786, 57.673992>,  <63.093922, 58.776497, 57.003075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.223171, 58.562786, 57.673992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.903076, 58.357391, 57.550087>,  <62.711021, 58.234154, 57.475742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.903076, 58.357391, 57.550087>,  <63.223171, 58.562786, 57.673992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.903076, 58.357391, 57.550087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305050, -0.793276, 0.526932,
		-0.516304, 0.327175, 0.791446,
		-0.800234, -0.513487, -0.309767,
		62.663006, 58.203346, 57.457157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.610584, 59.132885, 58.019379>,  <63.223171, 58.562786, 57.673992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.610584, 59.132885, 58.019379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.753548, 58.760826, 57.985703>,  <63.839325, 58.537590, 57.965496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.753548, 58.760826, 57.985703>,  <63.610584, 59.132885, 58.019379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.753548, 58.760826, 57.985703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428043, 0.243260, -0.870404,
		0.830083, 0.275053, 0.485086,
		0.357409, -0.930145, -0.084191,
		63.860771, 58.481781, 57.960445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.355927, 59.092697, 57.967991>,  <63.610584, 59.132885, 58.019379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.355927, 59.092697, 57.967991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.232620, 58.773956, 57.760147>,  <64.158638, 58.582710, 57.635441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.232620, 58.773956, 57.760147>,  <64.355927, 59.092697, 57.967991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.232620, 58.773956, 57.760147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392124, 0.391215, -0.832580,
		0.866723, -0.460412, 0.191864,
		-0.308270, -0.796851, -0.519614,
		64.140137, 58.534901, 57.604263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.968834, 58.877350, 57.543774>,  <64.355927, 59.092697, 57.967991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.968834, 58.877350, 57.543774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.724388, 58.657486, 57.315948>,  <64.577721, 58.525570, 57.179253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.724388, 58.657486, 57.315948>,  <64.968834, 58.877350, 57.543774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.724388, 58.657486, 57.315948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433078, 0.370122, -0.821860,
		0.662550, -0.748924, 0.011854,
		-0.611123, -0.549657, -0.569566,
		64.541054, 58.492588, 57.145077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.314232, 58.341301, 57.099716>,  <64.968834, 58.877350, 57.543774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.314232, 58.341301, 57.099716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.992363, 58.484165, 56.910004>,  <64.799240, 58.569885, 56.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.992363, 58.484165, 56.910004>,  <65.314232, 58.341301, 57.099716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.992363, 58.484165, 56.910004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582032, 0.316768, -0.748930,
		-0.117252, -0.878688, -0.462773,
		-0.804668, 0.357163, -0.474283,
		64.750961, 58.591312, 56.767719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.176834, 58.726299, 56.543468>,  <65.314232, 58.341301, 57.099716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.176834, 58.726299, 56.543468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.486580, 58.550293, 56.725349>,  <65.672424, 58.444687, 56.834480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.486580, 58.550293, 56.725349>,  <65.176834, 58.726299, 56.543468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.486580, 58.550293, 56.725349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101831, 0.795914, 0.596785,
		-0.624504, -0.415820, 0.661127,
		0.774355, -0.440018, 0.454707,
		65.718887, 58.418289, 56.861763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.552017, 59.310127, 56.644135>,  <65.176834, 58.726299, 56.543468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.552017, 59.310127, 56.644135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.768318, 59.597153, 56.468552>,  <65.898102, 59.769367, 56.363201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.768318, 59.597153, 56.468552>,  <65.552017, 59.310127, 56.644135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.768318, 59.597153, 56.468552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622381, 0.009748, 0.782654,
		0.565884, -0.696423, -0.441328,
		0.540756, 0.717565, -0.438956,
		65.930542, 59.812424, 56.336864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.324081, 59.082306, 56.421612>,  <65.552017, 59.310127, 56.644135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.324081, 59.082306, 56.421612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.238548, 59.443619, 56.570404>,  <66.187233, 59.660404, 56.659679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.238548, 59.443619, 56.570404>,  <66.324081, 59.082306, 56.421612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.238548, 59.443619, 56.570404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558813, -0.199227, 0.805007,
		0.801253, 0.379996, -0.462165,
		-0.213824, 0.903278, 0.371978,
		66.174400, 59.714603, 56.681999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.907394, 59.482491, 56.589741>,  <66.324081, 59.082306, 56.421612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.907394, 59.482491, 56.589741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.612419, 59.590145, 56.837532>,  <66.435432, 59.654739, 56.986206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.612419, 59.590145, 56.837532>,  <66.907394, 59.482491, 56.589741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.612419, 59.590145, 56.837532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560994, -0.266706, 0.783679,
		0.376136, 0.925437, 0.045694,
		-0.737433, 0.269136, 0.619483,
		66.391190, 59.670887, 57.023376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.074348, 60.031956, 56.987480>,  <66.907394, 59.482491, 56.589741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.074348, 60.031956, 56.987480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.809677, 59.789062, 57.163414>,  <66.650879, 59.643326, 57.268974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.809677, 59.789062, 57.163414>,  <67.074348, 60.031956, 56.987480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.809677, 59.789062, 57.163414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613544, -0.101310, 0.783135,
		-0.430989, 0.788035, 0.439601,
		-0.661673, -0.607237, 0.439831,
		66.611176, 59.606892, 57.295364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.870934, 60.221722, 57.714779>,  <67.074348, 60.031956, 56.987480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.870934, 60.221722, 57.714779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.881462, 59.829887, 57.635056>,  <66.887779, 59.594788, 57.587223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.881462, 59.829887, 57.635056>,  <66.870934, 60.221722, 57.714779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.881462, 59.829887, 57.635056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616790, -0.140987, 0.774399,
		-0.786688, -0.143313, 0.600486,
		0.026321, -0.979584, -0.199307,
		66.889359, 59.536011, 57.575264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.723351, 59.729866, 58.366356>,  <66.870934, 60.221722, 57.714779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.723351, 59.729866, 58.366356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.946030, 59.573891, 58.072952>,  <67.079636, 59.480305, 57.896912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.946030, 59.573891, 58.072952>,  <66.723351, 59.729866, 58.366356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.946030, 59.573891, 58.072952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780337, -0.057351, 0.622724,
		-0.284893, -0.919052, 0.272359,
		0.556695, -0.389942, -0.733509,
		67.113037, 59.456909, 57.852898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.052910, 59.177551, 58.704945>,  <66.723351, 59.729866, 58.366356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.052910, 59.177551, 58.704945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.241455, 59.400948, 58.431915>,  <67.354584, 59.534985, 58.268097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.241455, 59.400948, 58.431915>,  <67.052910, 59.177551, 58.704945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.241455, 59.400948, 58.431915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777450, 0.102294, 0.620570,
		0.416408, -0.823177, -0.385984,
		0.471356, 0.558494, -0.682575,
		67.382858, 59.568497, 58.227142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.735413, 58.898327, 58.338421>,  <67.052910, 59.177551, 58.704945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.735413, 58.898327, 58.338421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.725502, 59.281067, 58.454231>,  <67.719559, 59.510712, 58.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.725502, 59.281067, 58.454231>,  <67.735413, 58.898327, 58.338421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.725502, 59.281067, 58.454231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867825, -0.123187, 0.481357,
		0.496252, 0.263178, -0.827327,
		-0.024767, 0.956850, 0.289524,
		67.718071, 59.568123, 58.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.852661, 58.449829, 58.704605>,  <67.735413, 58.898327, 58.338421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.852661, 58.449829, 58.704605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.034637, 58.522724, 58.355934>,  <68.143822, 58.566460, 58.146732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.034637, 58.522724, 58.355934>,  <67.852661, 58.449829, 58.704605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.034637, 58.522724, 58.355934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756788, -0.595027, 0.270581,
		-0.469362, -0.782773, -0.408614,
		0.454940, 0.182234, -0.871677,
		68.171120, 58.577393, 58.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.225586, 57.861950, 58.556168>,  <67.852661, 58.449829, 58.704605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.225586, 57.861950, 58.556168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.419876, 58.126945, 58.328072>,  <68.536453, 58.285942, 58.191216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.419876, 58.126945, 58.328072>,  <68.225586, 57.861950, 58.556168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.419876, 58.126945, 58.328072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834682, -0.545249, 0.077518,
		-0.259567, -0.513622, -0.817813,
		0.485727, 0.662492, -0.570240,
		68.565598, 58.325695, 58.157001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.574188, 57.562012, 57.916252>,  <68.225586, 57.861950, 58.556168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.574188, 57.562012, 57.916252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.749680, 57.893459, 58.055336>,  <68.854973, 58.092327, 58.138786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.749680, 57.893459, 58.055336>,  <68.574188, 57.562012, 57.916252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.749680, 57.893459, 58.055336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818079, -0.528410, 0.227001,
		0.371829, 0.184856, -0.909710,
		0.438738, 0.828620, 0.347705,
		68.881302, 58.142044, 58.159649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.197433, 57.672928, 57.545082>,  <68.574188, 57.562012, 57.916252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.197433, 57.672928, 57.545082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.210968, 57.832298, 57.911713>,  <69.219086, 57.927921, 58.131691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.210968, 57.832298, 57.911713>,  <69.197433, 57.672928, 57.545082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.210968, 57.832298, 57.911713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691459, -0.671510, 0.266381,
		0.721623, 0.624762, -0.298215,
		0.033830, 0.398430, 0.916575,
		69.221115, 57.951828, 58.186684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.844070, 57.922211, 57.742546>,  <69.197433, 57.672928, 57.545082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.844070, 57.922211, 57.742546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.649628, 57.806812, 58.072510>,  <69.532967, 57.737572, 58.270489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.649628, 57.806812, 58.072510>,  <69.844070, 57.922211, 57.742546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.649628, 57.806812, 58.072510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759754, -0.605952, 0.235786,
		0.431832, 0.741344, 0.513741,
		-0.486101, -0.288497, 0.824909,
		69.503799, 57.720264, 58.319981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.268570, 57.972221, 58.185013>,  <69.844070, 57.922211, 57.742546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.268570, 57.972221, 58.185013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.017319, 57.690655, 58.317650>,  <69.866570, 57.521717, 58.397232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.017319, 57.690655, 58.317650>,  <70.268570, 57.972221, 58.185013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.017319, 57.690655, 58.317650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775271, -0.602521, 0.189536,
		0.066376, 0.376129, 0.924187,
		-0.628132, -0.703914, 0.331595,
		69.828880, 57.479481, 58.417130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.350159, 57.830593, 58.955730>,  <70.268570, 57.972221, 58.185013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.350159, 57.830593, 58.955730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.244987, 57.522038, 58.723930>,  <70.181885, 57.336903, 58.584850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.244987, 57.522038, 58.723930>,  <70.350159, 57.830593, 58.955730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.244987, 57.522038, 58.723930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802825, -0.508051, 0.312020,
		-0.535107, -0.383200, 0.752874,
		-0.262932, -0.771390, -0.579504,
		70.166107, 57.290619, 58.550079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.996925, 57.266121, 59.251396>,  <70.350159, 57.830593, 58.955730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.996925, 57.266121, 59.251396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.268593, 57.217613, 58.961838>,  <70.431595, 57.188507, 58.788105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.268593, 57.217613, 58.961838>,  <69.996925, 57.266121, 59.251396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.268593, 57.217613, 58.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717993, -0.094953, 0.689543,
		-0.152357, -0.988068, 0.022582,
		0.679171, -0.121271, -0.723892,
		70.472343, 57.181232, 58.744671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.386330, 56.723881, 59.400303>,  <69.996925, 57.266121, 59.251396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.386330, 56.723881, 59.400303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.615036, 56.947006, 59.159660>,  <70.752258, 57.080879, 59.015274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.615036, 56.947006, 59.159660>,  <70.386330, 56.723881, 59.400303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.615036, 56.947006, 59.159660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755017, -0.070854, 0.651865,
		0.320991, -0.826939, -0.461668,
		0.571764, 0.557810, -0.601610,
		70.786568, 57.114349, 58.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.045380, 56.336769, 59.245731>,  <70.386330, 56.723881, 59.400303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.045380, 56.336769, 59.245731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.117043, 56.728645, 59.209724>,  <71.160042, 56.963772, 59.188122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.117043, 56.728645, 59.209724>,  <71.045380, 56.336769, 59.245731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.117043, 56.728645, 59.209724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767820, -0.082030, 0.635392,
		0.615106, -0.182952, -0.766925,
		0.179157, 0.979694, -0.090017,
		71.170792, 57.022552, 59.182720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.752953, 56.492348, 59.082207>,  <71.045380, 56.336769, 59.245731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.752953, 56.492348, 59.082207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.638588, 56.846169, 59.229622>,  <71.569969, 57.058460, 59.318069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.638588, 56.846169, 59.229622>,  <71.752953, 56.492348, 59.082207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.638588, 56.846169, 59.229622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766447, -0.019751, 0.642004,
		0.575168, 0.466015, -0.672318,
		-0.285905, 0.884556, 0.368536,
		71.552818, 57.111534, 59.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.267509, 56.844772, 59.247532>,  <71.752953, 56.492348, 59.082207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.267509, 56.844772, 59.247532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.000252, 57.010658, 59.494621>,  <71.839897, 57.110191, 59.642876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.000252, 57.010658, 59.494621>,  <72.267509, 56.844772, 59.247532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.000252, 57.010658, 59.494621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630100, -0.126111, 0.766205,
		0.395658, 0.901170, -0.177051,
		-0.668153, 0.414715, 0.617724,
		71.799805, 57.135075, 59.679939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.604599, 57.388542, 59.539112>,  <72.267509, 56.844772, 59.247532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.604599, 57.388542, 59.539112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.313942, 57.311897, 59.803017>,  <72.139549, 57.265911, 59.961361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.313942, 57.311897, 59.803017>,  <72.604599, 57.388542, 59.539112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.313942, 57.311897, 59.803017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632232, 0.189313, 0.751294,
		-0.268857, 0.963040, -0.016420,
		-0.726635, -0.191609, 0.659763,
		72.095955, 57.254414, 60.000946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.692184, 58.011639, 59.958652>,  <72.604599, 57.388542, 59.539112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.692184, 58.011639, 59.958652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469498, 57.737228, 60.146027>,  <72.335884, 57.572582, 60.258450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469498, 57.737228, 60.146027>,  <72.692184, 58.011639, 59.958652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.469498, 57.737228, 60.146027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474609, 0.200122, 0.857145,
		-0.681767, 0.699515, 0.214181,
		-0.556723, -0.686025, 0.468432,
		72.302483, 57.531422, 60.286556>
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
