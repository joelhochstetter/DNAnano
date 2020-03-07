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
	<38.000198, 47.579075, 55.134628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287079, 47.576118, 55.413361>,  <38.459206, 47.574345, 55.580601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287079, 47.576118, 55.413361>,  <38.000198, 47.579075, 55.134628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287079, 47.576118, 55.413361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671828, -0.258305, -0.694209,
		0.185122, 0.966035, -0.180293,
		0.717201, -0.007387, 0.696827,
		38.502239, 47.573902, 55.622410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585903, 47.970119, 54.881557>,  <38.000198, 47.579075, 55.134628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585903, 47.970119, 54.881557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724243, 47.709221, 55.151360>,  <38.807247, 47.552681, 55.313240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724243, 47.709221, 55.151360>,  <38.585903, 47.970119, 54.881557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724243, 47.709221, 55.151360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750328, -0.239379, -0.616203,
		0.563380, 0.719216, 0.406610,
		0.345849, -0.652247, 0.674509,
		38.827999, 47.513546, 55.353714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264763, 48.076832, 54.761463>,  <38.585903, 47.970119, 54.881557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264763, 48.076832, 54.761463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219177, 47.729607, 54.954739>,  <39.191826, 47.521271, 55.070705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219177, 47.729607, 54.954739>,  <39.264763, 48.076832, 54.761463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219177, 47.729607, 54.954739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696322, -0.416697, -0.584379,
		0.708624, 0.269858, 0.651942,
		-0.113963, -0.868067, 0.483190,
		39.184990, 47.469185, 55.099697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858067, 47.793018, 54.577374>,  <39.264763, 48.076832, 54.761463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858067, 47.793018, 54.577374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635834, 47.488548, 54.711197>,  <39.502495, 47.305866, 54.791492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635834, 47.488548, 54.711197>,  <39.858067, 47.793018, 54.577374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635834, 47.488548, 54.711197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472276, -0.620070, -0.626473,
		0.684309, -0.190054, 0.703989,
		-0.555586, -0.761178, 0.334561,
		39.469158, 47.260193, 54.811565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280930, 47.256161, 54.717972>,  <39.858067, 47.793018, 54.577374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280930, 47.256161, 54.717972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926064, 47.090027, 54.637543>,  <39.713142, 46.990345, 54.589287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926064, 47.090027, 54.637543>,  <40.280930, 47.256161, 54.717972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926064, 47.090027, 54.637543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438928, -0.625088, -0.645451,
		0.142390, -0.660880, 0.736860,
		-0.887168, -0.415334, -0.201073,
		39.659912, 46.965427, 54.577221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387856, 46.644066, 54.757370>,  <40.280930, 47.256161, 54.717972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387856, 46.644066, 54.757370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040123, 46.624191, 54.560677>,  <39.831486, 46.612267, 54.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040123, 46.624191, 54.560677>,  <40.387856, 46.644066, 54.757370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040123, 46.624191, 54.560677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372273, -0.720248, -0.585368,
		-0.325085, -0.691935, 0.644628,
		-0.869329, -0.049683, -0.491730,
		39.779324, 46.609287, 54.413158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128372, 45.886185, 54.725155>,  <40.387856, 46.644066, 54.757370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128372, 45.886185, 54.725155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930908, 46.080528, 54.436646>,  <39.812431, 46.197136, 54.263538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930908, 46.080528, 54.436646>,  <40.128372, 45.886185, 54.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930908, 46.080528, 54.436646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279601, -0.696673, -0.660659,
		-0.823482, -0.527810, 0.208071,
		-0.493660, 0.485864, -0.721274,
		39.782810, 46.226288, 54.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684536, 45.398201, 54.412186>,  <40.128372, 45.886185, 54.725155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684536, 45.398201, 54.412186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703873, 45.687565, 54.136696>,  <39.715473, 45.861183, 53.971401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703873, 45.687565, 54.136696>,  <39.684536, 45.398201, 54.412186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703873, 45.687565, 54.136696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325682, -0.663260, -0.673808,
		-0.944243, -0.191731, -0.267666,
		0.048342, 0.723412, -0.688722,
		39.718376, 45.904587, 53.930080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440533, 45.068436, 53.815128>,  <39.684536, 45.398201, 54.412186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440533, 45.068436, 53.815128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637527, 45.382156, 53.664223>,  <39.755726, 45.570389, 53.573681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637527, 45.382156, 53.664223>,  <39.440533, 45.068436, 53.815128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637527, 45.382156, 53.664223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224518, -0.533299, -0.815588,
		-0.840859, 0.316967, -0.438735,
		0.492492, 0.784298, -0.377265,
		39.785275, 45.617447, 53.551044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167850, 45.189701, 53.151253>,  <39.440533, 45.068436, 53.815128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167850, 45.189701, 53.151253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529213, 45.361095, 53.157707>,  <39.746029, 45.463932, 53.161579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529213, 45.361095, 53.157707>,  <39.167850, 45.189701, 53.151253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529213, 45.361095, 53.157707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267712, -0.534246, -0.801818,
		-0.334944, 0.728687, -0.597351,
		0.903406, 0.428482, 0.016136,
		39.800236, 45.489639, 53.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335472, 45.100182, 52.539551>,  <39.167850, 45.189701, 53.151253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335472, 45.100182, 52.539551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683472, 45.239388, 52.679253>,  <39.892273, 45.322910, 52.763073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683472, 45.239388, 52.679253>,  <39.335472, 45.100182, 52.539551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683472, 45.239388, 52.679253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491657, -0.559160, -0.667543,
		-0.037024, 0.752479, -0.657574,
		0.870002, 0.348016, 0.349259,
		39.944473, 45.343792, 52.784031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732838, 45.471424, 51.993042>,  <39.335472, 45.100182, 52.539551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732838, 45.471424, 51.993042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965614, 45.304752, 52.272388>,  <40.105282, 45.204750, 52.439999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965614, 45.304752, 52.272388>,  <39.732838, 45.471424, 51.993042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965614, 45.304752, 52.272388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357036, -0.640660, -0.679764,
		0.730664, 0.644926, -0.224055,
		0.581940, -0.416684, 0.698370,
		40.140198, 45.179749, 52.481899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292400, 45.356659, 51.655106>,  <39.732838, 45.471424, 51.993042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292400, 45.356659, 51.655106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373337, 45.141788, 51.982643>,  <40.421898, 45.012867, 52.179165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373337, 45.141788, 51.982643>,  <40.292400, 45.356659, 51.655106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373337, 45.141788, 51.982643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522233, -0.648145, -0.554239,
		0.828451, 0.539772, 0.149383,
		0.202341, -0.537173, 0.818843,
		40.434040, 44.980637, 52.228294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031872, 45.334007, 51.717846>,  <40.292400, 45.356659, 51.655106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031872, 45.334007, 51.717846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866844, 45.007210, 51.878998>,  <40.767826, 44.811131, 51.975689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866844, 45.007210, 51.878998>,  <41.031872, 45.334007, 51.717846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866844, 45.007210, 51.878998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603004, -0.576446, -0.551449,
		0.682768, 0.015428, 0.730472,
		-0.412570, -0.816989, 0.402882,
		40.743073, 44.762112, 51.999863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666096, 44.803909, 51.694042>,  <41.031872, 45.334007, 51.717846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666096, 44.803909, 51.694042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329338, 44.607868, 51.784378>,  <41.127281, 44.490242, 51.838581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329338, 44.607868, 51.784378>,  <41.666096, 44.803909, 51.694042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329338, 44.607868, 51.784378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345213, -0.810810, -0.472668,
		0.414772, -0.319975, 0.851810,
		-0.841898, -0.490105, 0.225842,
		41.076767, 44.460838, 51.852131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902092, 44.120316, 51.893433>,  <41.666096, 44.803909, 51.694042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902092, 44.120316, 51.893433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517479, 44.107960, 51.784256>,  <41.286713, 44.100548, 51.718750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517479, 44.107960, 51.784256>,  <41.902092, 44.120316, 51.893433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517479, 44.107960, 51.784256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238879, -0.584573, -0.775378,
		-0.135608, -0.810753, 0.569465,
		-0.961534, -0.030885, -0.272945,
		41.229019, 44.098694, 51.702374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801598, 43.437302, 51.627346>,  <41.902092, 44.120316, 51.893433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801598, 43.437302, 51.627346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482895, 43.619499, 51.468502>,  <41.291672, 43.728817, 51.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482895, 43.619499, 51.468502>,  <41.801598, 43.437302, 51.627346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482895, 43.619499, 51.468502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189415, -0.435779, -0.879897,
		-0.573844, -0.776284, 0.260932,
		-0.796759, 0.455499, -0.397109,
		41.243866, 43.756149, 51.349369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632553, 42.993515, 51.030346>,  <41.801598, 43.437302, 51.627346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632553, 42.993515, 51.030346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459312, 43.344814, 50.949257>,  <41.355366, 43.555595, 50.900604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459312, 43.344814, 50.949257>,  <41.632553, 42.993515, 51.030346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459312, 43.344814, 50.949257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118768, -0.167340, -0.978719,
		-0.893485, -0.447963, -0.031833,
		-0.433104, 0.878252, -0.202720,
		41.329380, 43.608292, 50.888439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185284, 42.825138, 50.569897>,  <41.632553, 42.993515, 51.030346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185284, 42.825138, 50.569897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226105, 43.217731, 50.505047>,  <41.250599, 43.453285, 50.466137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226105, 43.217731, 50.505047>,  <41.185284, 42.825138, 50.569897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226105, 43.217731, 50.505047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047730, -0.157955, -0.986292,
		-0.993633, 0.108391, 0.030727,
		0.102052, 0.981479, -0.162123,
		41.256721, 43.512177, 50.456409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783413, 42.962906, 50.032467>,  <41.185284, 42.825138, 50.569897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783413, 42.962906, 50.032467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055534, 43.256077, 50.031532>,  <41.218807, 43.431980, 50.030972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055534, 43.256077, 50.031532>,  <40.783413, 42.962906, 50.032467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055534, 43.256077, 50.031532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045042, 0.038626, -0.998238,
		-0.731548, 0.679207, 0.059290,
		0.680300, 0.732930, -0.002336,
		41.259624, 43.475956, 50.030830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466949, 43.350842, 49.500137>,  <40.783413, 42.962906, 50.032467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466949, 43.350842, 49.500137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849915, 43.456474, 49.546829>,  <41.079693, 43.519855, 49.574844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849915, 43.456474, 49.546829>,  <40.466949, 43.350842, 49.500137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849915, 43.456474, 49.546829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100657, 0.073634, -0.992193,
		-0.270614, 0.961686, 0.043916,
		0.957411, 0.264081, 0.116727,
		41.137138, 43.535698, 49.581848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493092, 43.895111, 49.075535>,  <40.466949, 43.350842, 49.500137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493092, 43.895111, 49.075535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877937, 43.806614, 49.139275>,  <41.108845, 43.753513, 49.177517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877937, 43.806614, 49.139275>,  <40.493092, 43.895111, 49.075535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877937, 43.806614, 49.139275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223457, 0.304937, -0.925786,
		0.156234, 0.926317, 0.342822,
		0.962111, -0.221246, 0.159351,
		41.166569, 43.740242, 49.187080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954510, 44.441380, 49.013653>,  <40.493092, 43.895111, 49.075535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954510, 44.441380, 49.013653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176514, 44.119766, 48.928329>,  <41.309715, 43.926800, 48.877136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176514, 44.119766, 48.928329>,  <40.954510, 44.441380, 49.013653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176514, 44.119766, 48.928329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253194, 0.407541, -0.877384,
		0.792374, 0.432950, 0.429765,
		0.555010, -0.804030, -0.213305,
		41.343018, 43.878555, 48.864338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439869, 44.723442, 48.625237>,  <40.954510, 44.441380, 49.013653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439869, 44.723442, 48.625237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479248, 44.331093, 48.558075>,  <41.502876, 44.095684, 48.517776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479248, 44.331093, 48.558075>,  <41.439869, 44.723442, 48.625237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479248, 44.331093, 48.558075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171018, 0.182892, -0.968144,
		0.980337, 0.066601, 0.185753,
		0.098453, -0.980874, -0.167906,
		41.508785, 44.036831, 48.507702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195145, 44.570705, 48.287285>,  <41.439869, 44.723442, 48.625237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195145, 44.570705, 48.287285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924278, 44.292271, 48.191864>,  <41.761761, 44.125210, 48.134609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924278, 44.292271, 48.191864>,  <42.195145, 44.570705, 48.287285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924278, 44.292271, 48.191864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253378, 0.083791, -0.963732,
		0.690832, -0.713049, 0.119633,
		-0.677163, -0.696089, -0.238556,
		41.721130, 44.083443, 48.120296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534096, 44.086941, 47.735546>,  <42.195145, 44.570705, 48.287285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534096, 44.086941, 47.735546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136124, 44.048992, 47.722145>,  <41.897343, 44.026222, 47.714104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136124, 44.048992, 47.722145>,  <42.534096, 44.086941, 47.735546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136124, 44.048992, 47.722145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016295, 0.176669, -0.984135,
		0.099281, -0.979688, -0.174227,
		-0.994926, -0.094867, -0.033504,
		41.837646, 44.020531, 47.712093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622013, 43.656578, 47.211674>,  <42.534096, 44.086941, 47.735546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622013, 43.656578, 47.211674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230408, 43.734314, 47.236202>,  <41.995445, 43.780956, 47.250919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230408, 43.734314, 47.236202>,  <42.622013, 43.656578, 47.211674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230408, 43.734314, 47.236202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028412, 0.167793, -0.985413,
		-0.201797, -0.966476, -0.158750,
		-0.979015, 0.194343, 0.061320,
		41.936703, 43.792618, 47.254597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366417, 43.305389, 46.728397>,  <42.622013, 43.656578, 47.211674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366417, 43.305389, 46.728397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074257, 43.574390, 46.776146>,  <41.898960, 43.735790, 46.804794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074257, 43.574390, 46.776146>,  <42.366417, 43.305389, 46.728397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074257, 43.574390, 46.776146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083855, 0.261745, -0.961488,
		-0.677850, -0.692263, -0.247572,
		-0.730403, 0.672504, 0.119374,
		41.855137, 43.776142, 46.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870270, 43.144703, 46.112930>,  <42.366417, 43.305389, 46.728397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870270, 43.144703, 46.112930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846603, 43.518925, 46.252213>,  <41.832401, 43.743458, 46.335781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846603, 43.518925, 46.252213>,  <41.870270, 43.144703, 46.112930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846603, 43.518925, 46.252213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000061, 0.348810, -0.937193,
		-0.998248, -0.055474, -0.020581,
		-0.059169, 0.935550, 0.348203,
		41.828854, 43.799591, 46.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641567, 43.453354, 45.488995>,  <41.870270, 43.144703, 46.112930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641567, 43.453354, 45.488995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739952, 43.758739, 45.727871>,  <41.798981, 43.941971, 45.871197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739952, 43.758739, 45.727871>,  <41.641567, 43.453354, 45.488995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739952, 43.758739, 45.727871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184358, 0.568020, -0.802101,
		-0.951586, 0.307381, -0.001040,
		0.245960, 0.763460, 0.597188,
		41.813740, 43.987778, 45.907028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184723, 44.023884, 45.302803>,  <41.641567, 43.453354, 45.488995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184723, 44.023884, 45.302803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517876, 44.188160, 45.451202>,  <41.717766, 44.286724, 45.540241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517876, 44.188160, 45.451202>,  <41.184723, 44.023884, 45.302803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517876, 44.188160, 45.451202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007766, 0.661597, -0.749820,
		-0.553394, 0.627393, 0.547844,
		0.832883, 0.410691, 0.370996,
		41.767742, 44.311367, 45.562500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120907, 44.827091, 45.203983>,  <41.184723, 44.023884, 45.302803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120907, 44.827091, 45.203983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513115, 44.809292, 45.280510>,  <41.748440, 44.798611, 45.326427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513115, 44.809292, 45.280510>,  <41.120907, 44.827091, 45.203983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513115, 44.809292, 45.280510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179617, 0.597356, -0.781603,
		-0.079501, 0.800740, 0.593712,
		0.980519, -0.044503, 0.191317,
		41.807270, 44.795940, 45.337906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372116, 45.535355, 45.213425>,  <41.120907, 44.827091, 45.203983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372116, 45.535355, 45.213425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681252, 45.290047, 45.148163>,  <41.866734, 45.142860, 45.109005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681252, 45.290047, 45.148163>,  <41.372116, 45.535355, 45.213425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681252, 45.290047, 45.148163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197396, 0.476654, -0.856642,
		0.603120, 0.629842, 0.489434,
		0.772840, -0.613270, -0.163151,
		41.913105, 45.106064, 45.099216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900761, 45.975502, 45.169094>,  <41.372116, 45.535355, 45.213425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900761, 45.975502, 45.169094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003601, 45.639896, 44.977280>,  <42.065308, 45.438534, 44.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003601, 45.639896, 44.977280>,  <41.900761, 45.975502, 45.169094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003601, 45.639896, 44.977280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251584, 0.537223, -0.805045,
		0.933061, 0.086337, 0.349204,
		0.257106, -0.839010, -0.479541,
		42.080734, 45.388195, 44.833416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418648, 46.169239, 44.704060>,  <41.900761, 45.975502, 45.169094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418648, 46.169239, 44.704060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353004, 45.811134, 44.538376>,  <42.313618, 45.596272, 44.438965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353004, 45.811134, 44.538376>,  <42.418648, 46.169239, 44.704060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353004, 45.811134, 44.538376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085357, 0.405444, -0.910126,
		0.982743, -0.184715, 0.009881,
		-0.164107, -0.895263, -0.414213,
		42.303772, 45.542557, 44.414112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897312, 46.097889, 44.203957>,  <42.418648, 46.169239, 44.704060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897312, 46.097889, 44.203957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581131, 45.875496, 44.101143>,  <42.391422, 45.742062, 44.039455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581131, 45.875496, 44.101143>,  <42.897312, 46.097889, 44.203957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581131, 45.875496, 44.101143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124714, 0.264755, -0.956217,
		0.599691, -0.787901, -0.139938,
		-0.790454, -0.555983, -0.257034,
		42.343994, 45.708702, 44.024033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090218, 45.755482, 43.635426>,  <42.897312, 46.097889, 44.203957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090218, 45.755482, 43.635426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693176, 45.728657, 43.594952>,  <42.454952, 45.712563, 43.570667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693176, 45.728657, 43.594952>,  <43.090218, 45.755482, 43.635426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693176, 45.728657, 43.594952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082156, 0.242462, -0.966676,
		0.089359, -0.967840, -0.235159,
		-0.992605, -0.067061, -0.101180,
		42.395393, 45.708538, 43.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991230, 45.430466, 43.028572>,  <43.090218, 45.755482, 43.635426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991230, 45.430466, 43.028572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619698, 45.576519, 43.053741>,  <42.396778, 45.664150, 43.068844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619698, 45.576519, 43.053741>,  <42.991230, 45.430466, 43.028572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619698, 45.576519, 43.053741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016162, 0.209592, -0.977655,
		-0.370159, -0.907056, -0.200576,
		-0.928828, 0.365130, 0.062923,
		42.341049, 45.686058, 43.072617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466663, 45.073109, 42.534950>,  <42.991230, 45.430466, 43.028572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466663, 45.073109, 42.534950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329590, 45.443748, 42.596901>,  <42.247345, 45.666130, 42.634071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329590, 45.443748, 42.596901>,  <42.466663, 45.073109, 42.534950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329590, 45.443748, 42.596901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027647, 0.154836, -0.987554,
		-0.939044, -0.342701, -0.027442,
		-0.342685, 0.926597, 0.154872,
		42.226784, 45.721729, 42.643364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046093, 45.169994, 41.992271>,  <42.466663, 45.073109, 42.534950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046093, 45.169994, 41.992271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068962, 45.542137, 42.137135>,  <42.082684, 45.765423, 42.224052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068962, 45.542137, 42.137135>,  <42.046093, 45.169994, 41.992271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068962, 45.542137, 42.137135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164982, 0.366573, -0.915645,
		-0.984638, -0.007399, 0.174451,
		0.057174, 0.930360, 0.362162,
		42.086113, 45.821243, 42.245785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453167, 45.408134, 41.793129>,  <42.046093, 45.169994, 41.992271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453167, 45.408134, 41.793129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700150, 45.719257, 41.840057>,  <41.848339, 45.905930, 41.868214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700150, 45.719257, 41.840057>,  <41.453167, 45.408134, 41.793129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700150, 45.719257, 41.840057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234341, 0.324275, -0.916477,
		-0.750884, 0.538394, 0.382498,
		0.617460, 0.777803, 0.117325,
		41.885387, 45.952599, 41.875256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096226, 45.927177, 41.418060>,  <41.453167, 45.408134, 41.793129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096226, 45.927177, 41.418060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469635, 46.061104, 41.469345>,  <41.693680, 46.141460, 41.500114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469635, 46.061104, 41.469345>,  <41.096226, 45.927177, 41.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469635, 46.061104, 41.469345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014191, 0.391830, -0.919928,
		-0.358240, 0.856953, 0.370534,
		0.933522, 0.334813, 0.128208,
		41.749691, 46.161549, 41.507809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988094, 46.630371, 41.183956>,  <41.096226, 45.927177, 41.418060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988094, 46.630371, 41.183956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354843, 46.470848, 41.177105>,  <41.574894, 46.375134, 41.172993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354843, 46.470848, 41.177105>,  <40.988094, 46.630371, 41.183956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354843, 46.470848, 41.177105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088673, 0.245320, -0.965378,
		0.389203, 0.883612, 0.260291,
		0.916874, -0.398809, -0.017126,
		41.629906, 46.351204, 41.171967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464767, 47.136238, 40.879070>,  <40.988094, 46.630371, 41.183956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464767, 47.136238, 40.879070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625214, 46.776733, 40.808266>,  <41.721481, 46.561031, 40.765781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625214, 46.776733, 40.808266>,  <41.464767, 47.136238, 40.879070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625214, 46.776733, 40.808266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103367, 0.236413, -0.966139,
		0.910177, 0.369235, 0.187731,
		0.401115, -0.898763, -0.177011,
		41.745548, 46.507103, 40.755161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918938, 47.212318, 40.370956>,  <41.464767, 47.136238, 40.879070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918938, 47.212318, 40.370956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893166, 46.814537, 40.337715>,  <41.877705, 46.575867, 40.317772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893166, 46.814537, 40.337715>,  <41.918938, 47.212318, 40.370956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893166, 46.814537, 40.337715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204561, 0.068347, -0.976465,
		0.976731, -0.079911, 0.199023,
		-0.064428, -0.994456, -0.083103,
		41.873837, 46.516201, 40.312786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332245, 47.059124, 39.834236>,  <41.918938, 47.212318, 40.370956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332245, 47.059124, 39.834236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127373, 46.717316, 39.868797>,  <42.004448, 46.512230, 39.889534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127373, 46.717316, 39.868797>,  <42.332245, 47.059124, 39.834236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127373, 46.717316, 39.868797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060584, -0.064408, -0.996083,
		0.856738, -0.515410, -0.018781,
		-0.512181, -0.854520, 0.086406,
		41.973717, 46.460960, 39.894718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579502, 46.592419, 39.374393>,  <42.332245, 47.059124, 39.834236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579502, 46.592419, 39.374393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205811, 46.458908, 39.424694>,  <41.981594, 46.378803, 39.454876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205811, 46.458908, 39.424694>,  <42.579502, 46.592419, 39.374393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205811, 46.458908, 39.424694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088299, -0.125171, -0.988198,
		0.345575, -0.934306, 0.087466,
		-0.934228, -0.333773, 0.125754,
		41.925541, 46.358776, 39.462421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564331, 46.071983, 38.913849>,  <42.579502, 46.592419, 39.374393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564331, 46.071983, 38.913849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181068, 46.152779, 38.994984>,  <41.951111, 46.201256, 39.043667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181068, 46.152779, 38.994984>,  <42.564331, 46.071983, 38.913849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181068, 46.152779, 38.994984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221759, -0.075679, -0.972160,
		-0.181013, -0.976460, 0.117304,
		-0.958153, 0.201987, 0.202840,
		41.893623, 46.213375, 39.055836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209824, 45.601273, 38.589245>,  <42.564331, 46.071983, 38.913849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209824, 45.601273, 38.589245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912407, 45.863083, 38.644009>,  <41.733959, 46.020168, 38.676868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912407, 45.863083, 38.644009>,  <42.209824, 45.601273, 38.589245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912407, 45.863083, 38.644009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338498, -0.191836, -0.921205,
		-0.576689, -0.731295, 0.364193,
		-0.743538, 0.654527, 0.136912,
		41.689346, 46.059441, 38.685081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663277, 45.269825, 38.259041>,  <42.209824, 45.601273, 38.589245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663277, 45.269825, 38.259041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578575, 45.660366, 38.276417>,  <41.527756, 45.894691, 38.286842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578575, 45.660366, 38.276417>,  <41.663277, 45.269825, 38.259041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578575, 45.660366, 38.276417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221904, -0.004744, -0.975057,
		-0.951798, -0.216112, 0.217662,
		-0.211754, 0.976357, 0.043440,
		41.515049, 45.953274, 38.289448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981426, 45.408958, 37.994995>,  <41.663277, 45.269825, 38.259041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981426, 45.408958, 37.994995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165237, 45.763172, 37.967659>,  <41.275524, 45.975700, 37.951260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165237, 45.763172, 37.967659>,  <40.981426, 45.408958, 37.994995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165237, 45.763172, 37.967659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316309, 0.091274, -0.944255,
		-0.829930, 0.455526, 0.322044,
		0.459527, 0.885531, -0.068337,
		41.303097, 46.028831, 37.947159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477840, 45.901970, 37.525124>,  <40.981426, 45.408958, 37.994995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477840, 45.901970, 37.525124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821671, 46.105972, 37.537937>,  <41.027969, 46.228374, 37.545624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821671, 46.105972, 37.537937>,  <40.477840, 45.901970, 37.525124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821671, 46.105972, 37.537937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095637, 0.222138, -0.970313,
		-0.501979, 0.830994, 0.239719,
		0.859576, 0.510003, 0.032035,
		41.079544, 46.258972, 37.547546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428352, 46.619549, 37.200081>,  <40.477840, 45.901970, 37.525124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428352, 46.619549, 37.200081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815842, 46.520836, 37.189640>,  <41.048336, 46.461609, 37.183376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815842, 46.520836, 37.189640>,  <40.428352, 46.619549, 37.200081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815842, 46.520836, 37.189640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023360, 0.195412, -0.980443,
		0.247059, 0.949163, 0.195065,
		0.968719, -0.246784, -0.026106,
		41.106457, 46.446800, 37.181808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772736, 47.153156, 36.846230>,  <40.428352, 46.619549, 37.200081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772736, 47.153156, 36.846230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010132, 46.837860, 36.781170>,  <41.152569, 46.648682, 36.742134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010132, 46.837860, 36.781170>,  <40.772736, 47.153156, 36.846230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010132, 46.837860, 36.781170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125285, 0.290104, -0.948759,
		0.795033, 0.542698, 0.270927,
		0.593486, -0.788238, -0.162650,
		41.188179, 46.601387, 36.732376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366611, 47.424778, 36.423168>,  <40.772736, 47.153156, 36.846230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366611, 47.424778, 36.423168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397072, 47.028412, 36.378838>,  <41.415348, 46.790592, 36.352242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397072, 47.028412, 36.378838>,  <41.366611, 47.424778, 36.423168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397072, 47.028412, 36.378838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166526, 0.122225, -0.978433,
		0.983092, 0.056052, 0.174321,
		0.076150, -0.990918, -0.110824,
		41.419918, 46.731136, 36.345589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100067, 47.258286, 36.091652>,  <41.366611, 47.424778, 36.423168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100067, 47.258286, 36.091652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827530, 46.977776, 36.007759>,  <41.664005, 46.809471, 35.957424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827530, 46.977776, 36.007759>,  <42.100067, 47.258286, 36.091652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827530, 46.977776, 36.007759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361236, -0.072953, -0.929616,
		0.636612, -0.709153, 0.303030,
		-0.681347, -0.701270, -0.209728,
		41.623127, 46.767395, 35.944839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422737, 46.957256, 35.538158>,  <42.100067, 47.258286, 36.091652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422737, 46.957256, 35.538158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054680, 46.800980, 35.527538>,  <41.833847, 46.707214, 35.521168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054680, 46.800980, 35.527538>,  <42.422737, 46.957256, 35.538158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054680, 46.800980, 35.527538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139244, -0.263070, -0.954676,
		0.365998, -0.882132, 0.296462,
		-0.920140, -0.390690, -0.026549,
		41.778637, 46.683773, 35.519573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481621, 46.233360, 35.425110>,  <42.422737, 46.957256, 35.538158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481621, 46.233360, 35.425110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117790, 46.353004, 35.309723>,  <41.899494, 46.424789, 35.240490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117790, 46.353004, 35.309723>,  <42.481621, 46.233360, 35.425110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117790, 46.353004, 35.309723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271607, -0.097448, -0.957462,
		-0.314497, -0.949230, 0.007395,
		-0.909572, 0.299110, -0.288464,
		41.844917, 46.442738, 35.223183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167389, 45.693115, 34.976944>,  <42.481621, 46.233360, 35.425110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167389, 45.693115, 34.976944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947273, 46.013542, 34.882740>,  <41.815205, 46.205799, 34.826218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947273, 46.013542, 34.882740>,  <42.167389, 45.693115, 34.976944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947273, 46.013542, 34.882740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053787, -0.315478, -0.947407,
		-0.833239, -0.508682, 0.216692,
		-0.550290, 0.801072, -0.235508,
		41.782185, 46.253864, 34.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523678, 45.450054, 34.649166>,  <42.167389, 45.693115, 34.976944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523678, 45.450054, 34.649166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595360, 45.820423, 34.516171>,  <41.638371, 46.042645, 34.436375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595360, 45.820423, 34.516171>,  <41.523678, 45.450054, 34.649166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595360, 45.820423, 34.516171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045251, -0.329841, -0.942951,
		-0.982770, 0.184030, -0.017211,
		0.179208, 0.925926, -0.332485,
		41.649120, 46.098202, 34.416424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958454, 45.618393, 34.180920>,  <41.523678, 45.450054, 34.649166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958454, 45.618393, 34.180920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250748, 45.869881, 34.074532>,  <41.426125, 46.020775, 34.010700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250748, 45.869881, 34.074532>,  <40.958454, 45.618393, 34.180920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250748, 45.869881, 34.074532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088273, -0.299311, -0.950064,
		-0.676935, 0.717718, -0.163216,
		0.730730, 0.628724, -0.265969,
		41.469967, 46.058498, 33.994740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889664, 45.749191, 33.477173>,  <40.958454, 45.618393, 34.180920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889664, 45.749191, 33.477173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228073, 45.960964, 33.502331>,  <41.431118, 46.088028, 33.517426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228073, 45.960964, 33.502331>,  <40.889664, 45.749191, 33.477173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228073, 45.960964, 33.502331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147361, -0.118827, -0.981919,
		-0.512384, 0.839990, -0.178547,
		0.846019, 0.529430, 0.062896,
		41.481880, 46.119793, 33.521198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812237, 46.220284, 33.017311>,  <40.889664, 45.749191, 33.477173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812237, 46.220284, 33.017311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201157, 46.147163, 33.075584>,  <41.434509, 46.103291, 33.110546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201157, 46.147163, 33.075584>,  <40.812237, 46.220284, 33.017311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201157, 46.147163, 33.075584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110006, -0.192058, -0.975199,
		0.206248, 0.964208, -0.166628,
		0.972296, -0.182803, 0.145680,
		41.492847, 46.092323, 33.119289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081387, 46.543026, 32.455578>,  <40.812237, 46.220284, 33.017311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081387, 46.543026, 32.455578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337029, 46.271225, 32.599701>,  <41.490414, 46.108143, 32.686176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337029, 46.271225, 32.599701>,  <41.081387, 46.543026, 32.455578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337029, 46.271225, 32.599701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044656, -0.434899, -0.899371,
		0.767825, 0.590879, -0.247600,
		0.639101, -0.679503, 0.360312,
		41.528759, 46.067375, 32.707794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<44.414089, 43.680912, 32.295517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.110489, 43.933903, 32.357357>,  <43.928329, 44.085697, 32.394463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.110489, 43.933903, 32.357357>,  <44.414089, 43.680912, 32.295517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110489, 43.933903, 32.357357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222178, 0.028399, 0.974593,
		0.612013, 0.774062, -0.162076,
		-0.758998, 0.632473, 0.154599,
		43.882790, 44.123646, 32.403736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702236, 44.150776, 32.800667>,  <44.414089, 43.680912, 32.295517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702236, 44.150776, 32.800667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.306694, 44.207783, 32.817913>,  <44.069370, 44.241985, 32.828259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.306694, 44.207783, 32.817913>,  <44.702236, 44.150776, 32.800667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306694, 44.207783, 32.817913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081458, 0.275433, 0.957863,
		0.124636, 0.950698, -0.283972,
		-0.988853, 0.142516, 0.043113,
		44.010036, 44.250538, 32.830849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638714, 44.854748, 33.071587>,  <44.702236, 44.150776, 32.800667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638714, 44.854748, 33.071587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.312233, 44.643635, 33.165607>,  <44.116344, 44.516968, 33.222019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.312233, 44.643635, 33.165607>,  <44.638714, 44.854748, 33.071587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312233, 44.643635, 33.165607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172745, 0.165302, 0.970997,
		-0.551331, 0.833139, -0.043748,
		-0.816207, -0.527783, 0.235057,
		44.067371, 44.485298, 33.236126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222687, 45.276657, 33.568119>,  <44.638714, 44.854748, 33.071587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222687, 45.276657, 33.568119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.111298, 44.894703, 33.609394>,  <44.044464, 44.665531, 33.634159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.111298, 44.894703, 33.609394>,  <44.222687, 45.276657, 33.568119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111298, 44.894703, 33.609394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032026, 0.098146, 0.994657,
		-0.959909, 0.280294, 0.003249,
		-0.278477, -0.954884, 0.103188,
		44.027756, 44.608238, 33.640350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616016, 45.152042, 34.137947>,  <44.222687, 45.276657, 33.568119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616016, 45.152042, 34.137947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.799706, 44.797398, 34.115936>,  <43.909920, 44.584610, 34.102730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.799706, 44.797398, 34.115936>,  <43.616016, 45.152042, 34.137947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799706, 44.797398, 34.115936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079123, -0.020869, 0.996646,
		-0.884788, -0.462040, 0.060568,
		0.459227, -0.886613, -0.055022,
		43.937473, 44.531414, 34.099430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371487, 44.953625, 34.702526>,  <43.616016, 45.152042, 34.137947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371487, 44.953625, 34.702526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.661278, 44.692451, 34.614162>,  <43.835152, 44.535748, 34.561142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.661278, 44.692451, 34.614162>,  <43.371487, 44.953625, 34.702526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661278, 44.692451, 34.614162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130235, -0.185056, 0.974060,
		-0.676882, -0.734457, -0.049034,
		0.724479, -0.652938, -0.220914,
		43.878620, 44.496571, 34.547890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293217, 44.373230, 35.205341>,  <43.371487, 44.953625, 34.702526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293217, 44.373230, 35.205341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.666222, 44.324387, 35.069389>,  <43.890022, 44.295082, 34.987820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.666222, 44.324387, 35.069389>,  <43.293217, 44.373230, 35.205341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666222, 44.324387, 35.069389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289668, -0.309161, 0.905821,
		-0.215683, -0.943138, -0.252925,
		0.932509, -0.122106, -0.339878,
		43.945972, 44.287754, 34.967426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535667, 43.626717, 35.257397>,  <43.293217, 44.373230, 35.205341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535667, 43.626717, 35.257397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.850090, 43.873913, 35.251690>,  <44.038746, 44.022228, 35.248264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.850090, 43.873913, 35.251690>,  <43.535667, 43.626717, 35.257397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850090, 43.873913, 35.251690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165674, -0.188386, 0.968020,
		0.595536, -0.763285, -0.250466,
		0.786060, 0.617986, -0.014266,
		44.085907, 44.059307, 35.247410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074162, 43.253731, 35.591320>,  <43.535667, 43.626717, 35.257397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074162, 43.253731, 35.591320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.221779, 43.625126, 35.607883>,  <44.310349, 43.847965, 35.617821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.221779, 43.625126, 35.607883>,  <44.074162, 43.253731, 35.591320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221779, 43.625126, 35.607883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321985, -0.169521, 0.931444,
		0.871857, -0.330408, -0.361520,
		0.369042, 0.928490, 0.041411,
		44.332493, 43.903671, 35.620308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791386, 43.125893, 35.926819>,  <44.074162, 43.253731, 35.591320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791386, 43.125893, 35.926819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.700500, 43.510799, 35.986694>,  <44.645969, 43.741745, 36.022621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.700500, 43.510799, 35.986694>,  <44.791386, 43.125893, 35.926819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700500, 43.510799, 35.986694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352176, -0.062118, 0.933870,
		0.907935, 0.264906, -0.324775,
		-0.227213, 0.962271, 0.149693,
		44.632336, 43.799480, 36.031601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395069, 43.395775, 36.229412>,  <44.791386, 43.125893, 35.926819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395069, 43.395775, 36.229412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.081566, 43.631733, 36.307129>,  <44.893463, 43.773308, 36.353760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.081566, 43.631733, 36.307129>,  <45.395069, 43.395775, 36.229412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081566, 43.631733, 36.307129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241732, 0.001570, 0.970342,
		0.572090, 0.807482, -0.143826,
		-0.783759, 0.589891, 0.194296,
		44.846439, 43.808701, 36.365417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585365, 43.897255, 36.684303>,  <45.395069, 43.395775, 36.229412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585365, 43.897255, 36.684303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.189751, 43.900681, 36.743267>,  <44.952381, 43.902737, 36.778645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.189751, 43.900681, 36.743267>,  <45.585365, 43.897255, 36.684303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189751, 43.900681, 36.743267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143401, 0.293683, 0.945085,
		-0.035200, 0.955865, -0.291692,
		-0.989038, 0.008562, 0.147410,
		44.893040, 43.903248, 36.787491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470768, 44.433018, 37.195309>,  <45.585365, 43.897255, 36.684303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470768, 44.433018, 37.195309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.137596, 44.213398, 37.222946>,  <44.937695, 44.081627, 37.239529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.137596, 44.213398, 37.222946>,  <45.470768, 44.433018, 37.195309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137596, 44.213398, 37.222946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009797, 0.110200, 0.993861,
		-0.553291, 0.828494, -0.086410,
		-0.832930, -0.549048, 0.069089,
		44.887718, 44.048683, 37.243671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959812, 44.797832, 37.501404>,  <45.470768, 44.433018, 37.195309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959812, 44.797832, 37.501404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.766228, 44.456478, 37.578876>,  <44.650078, 44.251663, 37.625359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.766228, 44.456478, 37.578876>,  <44.959812, 44.797832, 37.501404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766228, 44.456478, 37.578876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049097, 0.247453, 0.967655,
		-0.873713, 0.458795, -0.161656,
		-0.483958, -0.853390, 0.193677,
		44.621040, 44.200462, 37.636978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350929, 44.939949, 37.947781>,  <44.959812, 44.797832, 37.501404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350929, 44.939949, 37.947781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.446800, 44.556808, 38.011131>,  <44.504322, 44.326923, 38.049141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.446800, 44.556808, 38.011131>,  <44.350929, 44.939949, 37.947781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446800, 44.556808, 38.011131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013299, 0.159874, 0.987048,
		-0.970761, -0.238682, 0.025580,
		0.239680, -0.957847, 0.158374,
		44.518703, 44.269455, 38.058643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897102, 44.699253, 38.432781>,  <44.350929, 44.939949, 37.947781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897102, 44.699253, 38.432781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.193665, 44.430832, 38.433010>,  <44.371601, 44.269779, 38.433147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.193665, 44.430832, 38.433010>,  <43.897102, 44.699253, 38.432781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193665, 44.430832, 38.433010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001430, -0.000724, 0.999999,
		-0.671052, -0.741409, -0.001497,
		0.741409, -0.671053, 0.000575,
		44.416088, 44.229515, 38.433182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674156, 44.244522, 38.901463>,  <43.897102, 44.699253, 38.432781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674156, 44.244522, 38.901463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.067764, 44.174606, 38.887909>,  <44.303928, 44.132656, 38.879776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.067764, 44.174606, 38.887909>,  <43.674156, 44.244522, 38.901463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067764, 44.174606, 38.887909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050686, 0.092594, 0.994413,
		-0.170680, -0.980242, 0.099974,
		0.984022, -0.174793, -0.033881,
		44.362972, 44.122169, 38.877747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866592, 43.720657, 39.496101>,  <43.674156, 44.244522, 38.901463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866592, 43.720657, 39.496101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.212517, 43.899628, 39.404964>,  <44.420071, 44.007011, 39.350281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.212517, 43.899628, 39.404964>,  <43.866592, 43.720657, 39.496101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212517, 43.899628, 39.404964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142012, 0.217287, 0.965722,
		0.481600, -0.867521, 0.124372,
		0.864809, 0.447429, -0.227844,
		44.471958, 44.033855, 39.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392723, 43.411407, 39.813416>,  <43.866592, 43.720657, 39.496101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392723, 43.411407, 39.813416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.575676, 43.757767, 39.732410>,  <44.685448, 43.965584, 39.683807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.575676, 43.757767, 39.732410>,  <44.392723, 43.411407, 39.813416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575676, 43.757767, 39.732410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071807, 0.191028, 0.978955,
		0.886364, -0.462303, 0.025196,
		0.457387, 0.865901, -0.202517,
		44.712891, 44.017536, 39.671654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942642, 43.347771, 40.148052>,  <44.392723, 43.411407, 39.813416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942642, 43.347771, 40.148052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.848129, 43.733456, 40.099949>,  <44.791420, 43.964867, 40.071087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.848129, 43.733456, 40.099949>,  <44.942642, 43.347771, 40.148052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848129, 43.733456, 40.099949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028041, 0.130478, 0.991054,
		0.971280, 0.230795, -0.057867,
		-0.236281, 0.964214, -0.120259,
		44.777245, 44.022720, 40.063869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304565, 43.685204, 40.772038>,  <44.942642, 43.347771, 40.148052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304565, 43.685204, 40.772038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.060860, 43.961941, 40.617043>,  <44.914635, 44.127983, 40.524044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.060860, 43.961941, 40.617043>,  <45.304565, 43.685204, 40.772038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060860, 43.961941, 40.617043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057775, 0.448626, 0.891850,
		0.790858, 0.565761, -0.233361,
		-0.609266, 0.691845, -0.387486,
		44.878078, 44.169495, 40.500797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563740, 44.386589, 41.064945>,  <45.304565, 43.685204, 40.772038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563740, 44.386589, 41.064945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.187294, 44.442112, 40.941628>,  <44.961426, 44.475426, 40.867638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.187294, 44.442112, 40.941628>,  <45.563740, 44.386589, 41.064945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187294, 44.442112, 40.941628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241185, 0.363390, 0.899876,
		0.236942, 0.921238, -0.308511,
		-0.941110, 0.138810, -0.308291,
		44.904961, 44.483753, 40.849140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482437, 45.047249, 41.157459>,  <45.563740, 44.386589, 41.064945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482437, 45.047249, 41.157459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.104248, 44.917267, 41.148659>,  <44.877335, 44.839275, 41.143379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.104248, 44.917267, 41.148659>,  <45.482437, 45.047249, 41.157459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104248, 44.917267, 41.148659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099965, 0.225240, 0.969161,
		-0.309981, 0.918515, -0.245442,
		-0.945473, -0.324957, -0.021999,
		44.820606, 44.819778, 41.142059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113754, 45.474777, 41.517242>,  <45.482437, 45.047249, 41.157459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113754, 45.474777, 41.517242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.870918, 45.157883, 41.541901>,  <44.725216, 44.967747, 41.556694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.870918, 45.157883, 41.541901>,  <45.113754, 45.474777, 41.517242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870918, 45.157883, 41.541901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115977, 0.165084, 0.979437,
		-0.786125, 0.587456, -0.192102,
		-0.607089, -0.792239, 0.061645,
		44.688793, 44.920212, 41.560394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396030, 45.673508, 41.855343>,  <45.113754, 45.474777, 41.517242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396030, 45.673508, 41.855343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.492432, 45.288071, 41.901669>,  <44.550270, 45.056808, 41.929466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.492432, 45.288071, 41.901669>,  <44.396030, 45.673508, 41.855343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492432, 45.288071, 41.901669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107882, 0.091998, 0.989898,
		-0.964511, -0.251059, -0.081783,
		0.240999, -0.963590, 0.115818,
		44.564732, 44.998993, 41.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924240, 45.550770, 42.457371>,  <44.396030, 45.673508, 41.855343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924240, 45.550770, 42.457371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.173492, 45.238026, 42.449368>,  <44.323044, 45.050381, 42.444565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.173492, 45.238026, 42.449368>,  <43.924240, 45.550770, 42.457371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173492, 45.238026, 42.449368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220954, -0.200520, 0.954448,
		-0.750257, -0.590326, -0.297706,
		0.623132, -0.781861, -0.020007,
		44.360432, 45.003468, 42.443367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651695, 45.132511, 42.864613>,  <43.924240, 45.550770, 42.457371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651695, 45.132511, 42.864613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.021904, 44.982616, 42.842735>,  <44.244030, 44.892681, 42.829609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.021904, 44.982616, 42.842735>,  <43.651695, 45.132511, 42.864613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021904, 44.982616, 42.842735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015036, -0.180662, 0.983430,
		-0.378405, -0.909360, -0.172841,
		0.925518, -0.374733, -0.054690,
		44.299561, 44.870197, 42.826328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640301, 44.441967, 43.043694>,  <43.651695, 45.132511, 42.864613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640301, 44.441967, 43.043694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.006615, 44.593670, 43.096611>,  <44.226402, 44.684692, 43.128361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.006615, 44.593670, 43.096611>,  <43.640301, 44.441967, 43.043694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006615, 44.593670, 43.096611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104740, -0.092478, 0.990191,
		0.387767, -0.920660, -0.044967,
		0.915787, 0.379253, 0.132290,
		44.281349, 44.707447, 43.136299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999390, 43.867321, 43.583435>,  <43.640301, 44.441967, 43.043694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999390, 43.867321, 43.583435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.215637, 44.203789, 43.588566>,  <44.345387, 44.405670, 43.591644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.215637, 44.203789, 43.588566>,  <43.999390, 43.867321, 43.583435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215637, 44.203789, 43.588566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152581, -0.113037, 0.981805,
		0.827313, -0.528828, -0.189457,
		0.540622, 0.841168, 0.012827,
		44.377823, 44.456139, 43.592415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621853, 43.611607, 43.811420>,  <43.999390, 43.867321, 43.583435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621853, 43.611607, 43.811420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.565041, 43.999786, 43.889462>,  <44.530952, 44.232693, 43.936287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.565041, 43.999786, 43.889462>,  <44.621853, 43.611607, 43.811420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565041, 43.999786, 43.889462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223956, -0.160485, 0.961295,
		0.964195, 0.180224, -0.194544,
		-0.142027, 0.970445, 0.195101,
		44.522434, 44.290920, 43.947990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165997, 43.805626, 44.247288>,  <44.621853, 43.611607, 43.811420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165997, 43.805626, 44.247288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.889137, 44.092682, 44.278080>,  <44.723022, 44.264915, 44.296555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.889137, 44.092682, 44.278080>,  <45.165997, 43.805626, 44.247288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889137, 44.092682, 44.278080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096203, -0.013980, 0.995264,
		0.715315, 0.696277, -0.059363,
		-0.692149, 0.717637, 0.076984,
		44.681492, 44.307972, 44.301174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440079, 44.326836, 44.682415>,  <45.165997, 43.805626, 44.247288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440079, 44.326836, 44.682415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.045868, 44.394566, 44.679054>,  <44.809341, 44.435204, 44.677036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.045868, 44.394566, 44.679054>,  <45.440079, 44.326836, 44.682415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045868, 44.394566, 44.679054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024630, -0.093979, 0.995269,
		0.167732, 0.981070, 0.096789,
		-0.985525, 0.169322, -0.008401,
		44.750210, 44.445362, 44.676533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344139, 44.905323, 45.009846>,  <45.440079, 44.326836, 44.682415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344139, 44.905323, 45.009846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.995979, 44.710056, 45.035439>,  <44.787083, 44.592896, 45.050793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.995979, 44.710056, 45.035439>,  <45.344139, 44.905323, 45.009846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995979, 44.710056, 45.035439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067702, 0.010047, 0.997655,
		-0.487661, 0.872694, 0.024305,
		-0.870404, -0.488163, 0.063982,
		44.734859, 44.563606, 45.054634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874557, 45.180492, 45.507034>,  <45.344139, 44.905323, 45.009846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874557, 45.180492, 45.507034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.691055, 44.826790, 45.472080>,  <44.580956, 44.614567, 45.451107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.691055, 44.826790, 45.472080>,  <44.874557, 45.180492, 45.507034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691055, 44.826790, 45.472080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002065, -0.097281, 0.995255,
		-0.888562, 0.456755, 0.042802,
		-0.458751, -0.884257, -0.087384,
		44.553429, 44.561512, 45.445866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380238, 45.224133, 46.066402>,  <44.874557, 45.180492, 45.507034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380238, 45.224133, 46.066402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.425919, 44.839699, 45.965786>,  <44.453327, 44.609039, 45.905418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.425919, 44.839699, 45.965786>,  <44.380238, 45.224133, 46.066402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425919, 44.839699, 45.965786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045760, -0.258016, 0.965056,
		-0.992403, -0.098703, -0.073445,
		0.114204, -0.961085, -0.251539,
		44.460178, 44.551373, 45.890324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820717, 44.832333, 46.368347>,  <44.380238, 45.224133, 46.066402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820717, 44.832333, 46.368347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.114479, 44.567997, 46.306450>,  <44.290737, 44.409397, 46.269310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.114479, 44.567997, 46.306450>,  <43.820717, 44.832333, 46.368347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114479, 44.567997, 46.306450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009154, -0.218335, 0.975831,
		-0.678654, -0.718068, -0.154296,
		0.734401, -0.660839, -0.154747,
		44.334801, 44.369747, 46.260025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672062, 44.216904, 46.766125>,  <43.820717, 44.832333, 46.368347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672062, 44.216904, 46.766125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.066338, 44.201534, 46.700462>,  <44.302902, 44.192314, 46.661064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.066338, 44.201534, 46.700462>,  <43.672062, 44.216904, 46.766125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066338, 44.201534, 46.700462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151347, -0.227281, 0.961997,
		-0.074269, -0.973071, -0.218213,
		0.985687, -0.038420, -0.164152,
		44.362045, 44.190006, 46.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911098, 43.545830, 47.136959>,  <43.672062, 44.216904, 46.766125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911098, 43.545830, 47.136959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.243080, 43.752811, 47.053604>,  <44.442268, 43.876999, 47.003593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.243080, 43.752811, 47.053604>,  <43.911098, 43.545830, 47.136959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243080, 43.752811, 47.053604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383403, -0.257792, 0.886874,
		0.405193, -0.815959, -0.412347,
		0.829952, 0.517450, -0.208385,
		44.492065, 43.908047, 46.991089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479836, 43.119049, 47.401348>,  <43.911098, 43.545830, 47.136959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479836, 43.119049, 47.401348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.643044, 43.483765, 47.382736>,  <44.740967, 43.702595, 47.371571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.643044, 43.483765, 47.382736>,  <44.479836, 43.119049, 47.401348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643044, 43.483765, 47.382736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425960, -0.145047, 0.893040,
		0.807513, -0.384197, -0.447566,
		0.408021, 0.911786, -0.046526,
		44.765450, 43.757301, 47.368778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098824, 43.034431, 47.709759>,  <44.479836, 43.119049, 47.401348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098824, 43.034431, 47.709759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.022263, 43.426182, 47.735630>,  <44.976326, 43.661232, 47.751152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.022263, 43.426182, 47.735630>,  <45.098824, 43.034431, 47.709759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022263, 43.426182, 47.735630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451578, 0.029363, 0.891748,
		0.871459, 0.199895, -0.447885,
		-0.191407, 0.979377, 0.064679,
		44.964840, 43.719994, 47.755035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757141, 43.373287, 47.859558>,  <45.098824, 43.034431, 47.709759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757141, 43.373287, 47.859558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.482567, 43.639515, 47.976742>,  <45.317822, 43.799252, 48.047054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.482567, 43.639515, 47.976742>,  <45.757141, 43.373287, 47.859558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482567, 43.639515, 47.976742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445483, 0.066456, 0.892821,
		0.574762, 0.743374, -0.342116,
		-0.686435, 0.665567, 0.292964,
		45.276638, 43.839184, 48.064632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139706, 43.832561, 48.328419>,  <45.757141, 43.373287, 47.859558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139706, 43.832561, 48.328419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.765778, 43.964329, 48.381485>,  <45.541420, 44.043388, 48.413326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.765778, 43.964329, 48.381485>,  <46.139706, 43.832561, 48.328419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765778, 43.964329, 48.381485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256001, 0.366183, 0.894636,
		0.246130, 0.870283, -0.426646,
		-0.934817, 0.329419, 0.132665,
		45.485332, 44.063156, 48.421284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171722, 44.577904, 48.618626>,  <46.139706, 43.832561, 48.328419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171722, 44.577904, 48.618626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.795952, 44.471573, 48.705177>,  <45.570492, 44.407776, 48.757107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.795952, 44.471573, 48.705177>,  <46.171722, 44.577904, 48.618626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795952, 44.471573, 48.705177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084485, 0.432228, 0.897798,
		-0.332184, 0.861693, -0.383587,
		-0.939423, -0.265827, 0.216380,
		45.514126, 44.391827, 48.770092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793354, 45.190807, 48.846718>,  <46.171722, 44.577904, 48.618626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793354, 45.190807, 48.846718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.617531, 44.866322, 49.000973>,  <45.512035, 44.671631, 49.093525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.617531, 44.866322, 49.000973>,  <45.793354, 45.190807, 48.846718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617531, 44.866322, 49.000973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147446, 0.358348, 0.921871,
		-0.886028, 0.462080, -0.037906,
		-0.439561, -0.811214, 0.385638,
		45.485664, 44.622955, 49.116665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255058, 45.359402, 49.347393>,  <45.793354, 45.190807, 48.846718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255058, 45.359402, 49.347393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.366501, 44.986305, 49.438927>,  <45.433369, 44.762447, 49.493847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.366501, 44.986305, 49.438927>,  <45.255058, 45.359402, 49.347393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366501, 44.986305, 49.438927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115027, 0.268959, 0.956258,
		-0.953491, -0.240102, 0.182226,
		0.278611, -0.932744, 0.228831,
		45.450085, 44.706482, 49.507576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957840, 45.213654, 50.038216>,  <45.255058, 45.359402, 49.347393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957840, 45.213654, 50.038216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.240784, 44.933296, 50.001587>,  <45.410549, 44.765083, 49.979610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.240784, 44.933296, 50.001587>,  <44.957840, 45.213654, 50.038216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240784, 44.933296, 50.001587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095856, -0.033231, 0.994840,
		-0.700320, -0.712491, 0.043679,
		0.707364, -0.700894, -0.091569,
		45.452991, 44.723026, 49.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782604, 44.808437, 50.607502>,  <44.957840, 45.213654, 50.038216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782604, 44.808437, 50.607502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.158432, 44.717056, 50.505501>,  <45.383926, 44.662228, 50.444302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.158432, 44.717056, 50.505501>,  <44.782604, 44.808437, 50.607502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158432, 44.717056, 50.505501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221546, -0.162168, 0.961571,
		-0.261027, -0.959953, -0.101755,
		0.939565, -0.228453, -0.255004,
		45.440300, 44.648521, 50.429001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986698, 44.213737, 51.049900>,  <44.782604, 44.808437, 50.607502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986698, 44.213737, 51.049900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.313156, 44.409752, 50.927414>,  <45.509033, 44.527359, 50.853920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.313156, 44.409752, 50.927414>,  <44.986698, 44.213737, 51.049900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313156, 44.409752, 50.927414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287289, 0.115689, 0.950832,
		0.501367, -0.863991, -0.046363,
		0.816147, 0.490035, -0.306218,
		45.557999, 44.556763, 50.835548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394695, 44.288895, 51.674835>,  <44.986698, 44.213737, 51.049900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394695, 44.288895, 51.674835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.622192, 44.522930, 51.443592>,  <45.758690, 44.663349, 51.304848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.622192, 44.522930, 51.443592>,  <45.394695, 44.288895, 51.674835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622192, 44.522930, 51.443592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309402, 0.499044, 0.809460,
		0.762105, -0.639240, 0.102800,
		0.568741, 0.585087, -0.578106,
		45.792816, 44.698456, 51.270161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103855, 44.163887, 51.705612>,  <45.394695, 44.288895, 51.674835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103855, 44.163887, 51.705612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.031197, 44.544102, 51.604824>,  <45.987602, 44.772228, 51.544350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.031197, 44.544102, 51.604824>,  <46.103855, 44.163887, 51.705612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031197, 44.544102, 51.604824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458874, 0.308556, 0.833203,
		0.869735, 0.035724, -0.492223,
		-0.181644, 0.950535, -0.251969,
		45.976704, 44.829262, 51.529232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682735, 44.519455, 51.861679>,  <46.103855, 44.163887, 51.705612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682735, 44.519455, 51.861679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.413383, 44.814732, 51.845509>,  <46.251770, 44.991898, 51.835804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.413383, 44.814732, 51.845509>,  <46.682735, 44.519455, 51.861679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413383, 44.814732, 51.845509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543965, 0.531761, 0.649102,
		0.500657, 0.415102, -0.759627,
		-0.673383, 0.738187, -0.040429,
		46.211369, 45.036186, 51.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123985, 45.071815, 52.110222>,  <46.682735, 44.519455, 51.861679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123985, 45.071815, 52.110222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.765038, 45.248276, 52.105804>,  <46.549671, 45.354153, 52.103153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.765038, 45.248276, 52.105804>,  <47.123985, 45.071815, 52.110222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765038, 45.248276, 52.105804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331864, 0.691138, 0.642024,
		0.290860, 0.572466, -0.766605,
		-0.897367, 0.441147, -0.011043,
		46.495827, 45.380619, 52.102493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189743, 45.821114, 51.808498>,  <47.123985, 45.071815, 52.110222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189743, 45.821114, 51.808498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.871307, 45.763985, 52.043732>,  <46.680244, 45.729710, 52.184872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.871307, 45.763985, 52.043732>,  <47.189743, 45.821114, 51.808498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.871307, 45.763985, 52.043732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303015, 0.747096, 0.591633,
		-0.523851, 0.649192, -0.551481,
		-0.796092, -0.142820, 0.588081,
		46.632481, 45.721138, 52.220158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674568, 46.334549, 51.782547>,  <47.189743, 45.821114, 51.808498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674568, 46.334549, 51.782547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.653839, 46.172371, 52.147606>,  <46.641403, 46.075066, 52.366642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.653839, 46.172371, 52.147606>,  <46.674568, 46.334549, 51.782547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653839, 46.172371, 52.147606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173748, 0.896280, 0.408036,
		-0.983426, 0.179717, 0.023997,
		-0.051823, -0.405442, 0.912651,
		46.638290, 46.050739, 52.421402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506657, 46.872452, 52.209404>,  <46.674568, 46.334549, 51.782547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506657, 46.872452, 52.209404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.606888, 46.592850, 52.477314>,  <46.667027, 46.425087, 52.638062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.606888, 46.592850, 52.477314>,  <46.506657, 46.872452, 52.209404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606888, 46.592850, 52.477314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301082, 0.713806, 0.632322,
		-0.920087, 0.043211, 0.389322,
		0.250578, -0.699009, 0.669774,
		46.682060, 46.383148, 52.678246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357201, 47.200359, 52.833401>,  <46.506657, 46.872452, 52.209404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357201, 47.200359, 52.833401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.562714, 46.877655, 52.950134>,  <46.686020, 46.684032, 53.020172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.562714, 46.877655, 52.950134>,  <46.357201, 47.200359, 52.833401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562714, 46.877655, 52.950134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261658, 0.471310, 0.842260,
		-0.817045, -0.356378, 0.453246,
		0.513782, -0.806760, 0.291832,
		46.716846, 46.635628, 53.037685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148518, 46.945293, 53.515301>,  <46.357201, 47.200359, 52.833401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148518, 46.945293, 53.515301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.520012, 46.801720, 53.478176>,  <46.742908, 46.715576, 53.455902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.520012, 46.801720, 53.478176>,  <46.148518, 46.945293, 53.515301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520012, 46.801720, 53.478176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241380, 0.395406, 0.886222,
		-0.281393, -0.845471, 0.453868,
		0.928738, -0.358932, -0.092816,
		46.798634, 46.694038, 53.450333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424545, 46.871017, 54.174660>,  <46.148518, 46.945293, 53.515301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424545, 46.871017, 54.174660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.775215, 46.805000, 53.993904>,  <46.985619, 46.765388, 53.885452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.775215, 46.805000, 53.993904>,  <46.424545, 46.871017, 54.174660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775215, 46.805000, 53.993904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480636, 0.259977, 0.837497,
		-0.020746, -0.951405, 0.307242,
		0.876675, -0.165046, -0.451886,
		47.038219, 46.755486, 53.858337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.846630, 46.550434, 54.623859>,  <46.424545, 46.871017, 54.174660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.846630, 46.550434, 54.623859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.104874, 46.730270, 54.376942>,  <47.259819, 46.838173, 54.228790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.104874, 46.730270, 54.376942>,  <46.846630, 46.550434, 54.623859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104874, 46.730270, 54.376942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517529, 0.336827, 0.786582,
		0.561565, -0.827293, -0.015219,
		0.645608, 0.449594, -0.617298,
		47.298557, 46.865147, 54.191753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.402172, 46.396332, 54.902100>,  <46.846630, 46.550434, 54.623859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.402172, 46.396332, 54.902100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.456551, 46.717392, 54.669800>,  <47.489178, 46.910027, 54.530418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.456551, 46.717392, 54.669800>,  <47.402172, 46.396332, 54.902100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456551, 46.717392, 54.669800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570788, 0.415673, 0.708109,
		0.809766, -0.427746, -0.401637,
		0.135942, 0.802652, -0.580750,
		47.497334, 46.958187, 54.495575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.126431, 46.475494, 54.885796>,  <47.402172, 46.396332, 54.902100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.126431, 46.475494, 54.885796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.970566, 46.828438, 54.780262>,  <47.877048, 47.040203, 54.716942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.970566, 46.828438, 54.780262>,  <48.126431, 46.475494, 54.885796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970566, 46.828438, 54.780262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613866, 0.462399, 0.639810,
		0.686537, 0.087351, -0.721828,
		-0.389660, 0.882359, -0.263832,
		47.853668, 47.093147, 54.701111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.742176, 46.891396, 54.800690>,  <48.126431, 46.475494, 54.885796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.742176, 46.891396, 54.800690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.432961, 47.142235, 54.838989>,  <48.247433, 47.292736, 54.861969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.432961, 47.142235, 54.838989>,  <48.742176, 46.891396, 54.800690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.432961, 47.142235, 54.838989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552849, 0.591968, 0.586457,
		0.311084, 0.506287, -0.804301,
		-0.773036, 0.627095, 0.095749,
		48.201050, 47.330364, 54.867714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.870903, 47.571442, 54.450684>,  <48.742176, 46.891396, 54.800690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.870903, 47.571442, 54.450684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.579163, 47.674759, 54.704086>,  <48.404118, 47.736748, 54.856129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.579163, 47.674759, 54.704086>,  <48.870903, 47.571442, 54.450684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.579163, 47.674759, 54.704086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594324, 0.697860, 0.399713,
		-0.338855, 0.668039, -0.662497,
		-0.729354, 0.258293, 0.633504,
		48.360355, 47.752247, 54.894138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.891373, 48.249989, 54.421616>,  <48.870903, 47.571442, 54.450684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.891373, 48.249989, 54.421616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.725342, 48.125412, 54.763542>,  <48.625725, 48.050667, 54.968700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.725342, 48.125412, 54.763542>,  <48.891373, 48.249989, 54.421616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.725342, 48.125412, 54.763542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640042, 0.567789, 0.517650,
		-0.646577, 0.761983, -0.036338,
		-0.415073, -0.311443, 0.854820,
		48.600819, 48.031979, 55.019989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<47.969795, 47.656422, 56.067791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.157875, 47.794205, 55.742764>,  <48.270725, 47.876873, 55.547749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.157875, 47.794205, 55.742764>,  <47.969795, 47.656422, 56.067791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.157875, 47.794205, 55.742764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687554, -0.434276, -0.581956,
		-0.553335, 0.832319, 0.032633,
		0.470202, 0.344454, -0.812565,
		48.298935, 47.897541, 55.498993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.342484, 47.909534, 55.674725>,  <47.969795, 47.656422, 56.067791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.342484, 47.909534, 55.674725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671005, 47.886612, 55.447685>,  <47.868118, 47.872856, 55.311462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671005, 47.886612, 55.447685>,  <47.342484, 47.909534, 55.674725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671005, 47.886612, 55.447685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553401, -0.321692, -0.768285,
		-0.138562, 0.945108, -0.295923,
		0.821309, -0.057309, -0.567598,
		47.917397, 47.869419, 55.277405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.171165, 48.187252, 54.959248>,  <47.342484, 47.909534, 55.674725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.171165, 48.187252, 54.959248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.485962, 47.940468, 54.958611>,  <47.674839, 47.792397, 54.958229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.485962, 47.940468, 54.958611>,  <47.171165, 48.187252, 54.959248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.485962, 47.940468, 54.958611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305639, -0.387631, -0.869671,
		0.535937, 0.684910, -0.493630,
		0.786992, -0.616961, -0.001590,
		47.722061, 47.755379, 54.958134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399330, 48.272556, 54.293709>,  <47.171165, 48.187252, 54.959248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399330, 48.272556, 54.293709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.540413, 47.917114, 54.411003>,  <47.625061, 47.703850, 54.481380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.540413, 47.917114, 54.411003>,  <47.399330, 48.272556, 54.293709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540413, 47.917114, 54.411003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295947, -0.403220, -0.865927,
		0.887701, 0.218636, -0.405197,
		0.352706, -0.888601, 0.293234,
		47.646225, 47.650536, 54.498974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.813534, 47.998890, 53.807495>,  <47.399330, 48.272556, 54.293709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.813534, 47.998890, 53.807495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.697067, 47.675385, 54.011894>,  <47.627190, 47.481281, 54.134533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.697067, 47.675385, 54.011894>,  <47.813534, 47.998890, 53.807495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697067, 47.675385, 54.011894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340028, -0.411780, -0.845469,
		0.894206, -0.419926, -0.155107,
		-0.291165, -0.808764, 0.511002,
		47.609718, 47.432755, 54.165195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.847126, 47.553848, 53.255657>,  <47.813534, 47.998890, 53.807495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.847126, 47.553848, 53.255657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.683243, 47.327240, 53.541649>,  <47.584911, 47.191277, 53.713245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.683243, 47.327240, 53.541649>,  <47.847126, 47.553848, 53.255657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683243, 47.327240, 53.541649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358895, -0.620465, -0.697293,
		0.838650, -0.542288, 0.050887,
		-0.409707, -0.566522, 0.714978,
		47.560329, 47.157284, 53.756142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.036835, 46.928463, 53.149567>,  <47.847126, 47.553848, 53.255657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.036835, 46.928463, 53.149567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.733994, 46.847313, 53.397964>,  <47.552288, 46.798622, 53.547005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.733994, 46.847313, 53.397964>,  <48.036835, 46.928463, 53.149567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.733994, 46.847313, 53.397964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251451, -0.786831, -0.563622,
		0.602965, -0.582870, 0.544698,
		-0.757104, -0.202879, 0.620995,
		47.506863, 46.786449, 53.584263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.033894, 46.219944, 53.274952>,  <48.036835, 46.928463, 53.149567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.033894, 46.219944, 53.274952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671013, 46.385506, 53.305077>,  <47.453285, 46.484840, 53.323151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671013, 46.385506, 53.305077>,  <48.033894, 46.219944, 53.274952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671013, 46.385506, 53.305077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365152, -0.685809, -0.629547,
		-0.208922, -0.598626, 0.773304,
		-0.907202, 0.413900, 0.075309,
		47.398853, 46.509674, 53.327667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562084, 45.683594, 53.495762>,  <48.033894, 46.219944, 53.274952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562084, 45.683594, 53.495762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.338753, 45.973225, 53.333786>,  <47.204754, 46.147003, 53.236599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.338753, 45.973225, 53.333786>,  <47.562084, 45.683594, 53.495762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338753, 45.973225, 53.333786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465258, -0.677409, -0.569783,
		-0.686881, -0.129722, 0.715099,
		-0.558328, 0.724078, -0.404945,
		47.171253, 46.190449, 53.212303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874760, 45.511169, 53.537590>,  <47.562084, 45.683594, 53.495762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874760, 45.511169, 53.537590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.839134, 45.797680, 53.260746>,  <46.817760, 45.969585, 53.094639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.839134, 45.797680, 53.260746>,  <46.874760, 45.511169, 53.537590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839134, 45.797680, 53.260746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746138, -0.508293, -0.430018,
		-0.659807, 0.478114, 0.579709,
		-0.089065, 0.716272, -0.692114,
		46.812416, 46.012562, 53.053112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148052, 45.556423, 53.468842>,  <46.874760, 45.511169, 53.537590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148052, 45.556423, 53.468842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.307762, 45.708572, 53.135159>,  <46.403587, 45.799862, 52.934948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.307762, 45.708572, 53.135159>,  <46.148052, 45.556423, 53.468842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.307762, 45.708572, 53.135159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615503, -0.563153, -0.551376,
		-0.679512, 0.733606, 0.009267,
		0.399274, 0.380371, -0.834205,
		46.427544, 45.822685, 52.884895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625729, 45.557365, 52.979382>,  <46.148052, 45.556423, 53.468842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625729, 45.557365, 52.979382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938622, 45.609665, 52.735737>,  <46.126358, 45.641045, 52.589550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938622, 45.609665, 52.735737>,  <45.625729, 45.557365, 52.979382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938622, 45.609665, 52.735737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414270, -0.621055, -0.665335,
		-0.465283, 0.772784, -0.431644,
		0.782235, 0.130752, -0.609108,
		46.173290, 45.648891, 52.553005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359837, 45.873753, 52.345654>,  <45.625729, 45.557365, 52.979382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359837, 45.873753, 52.345654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.714615, 45.717377, 52.247276>,  <45.927483, 45.623550, 52.188251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.714615, 45.717377, 52.247276>,  <45.359837, 45.873753, 52.345654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714615, 45.717377, 52.247276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428600, -0.498214, -0.753714,
		0.172128, 0.773916, -0.609448,
		0.886947, -0.390944, -0.245943,
		45.980698, 45.600094, 52.173492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529842, 46.029312, 51.554943>,  <45.359837, 45.873753, 52.345654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529842, 46.029312, 51.554943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.735924, 45.699387, 51.648106>,  <45.859573, 45.501431, 51.704002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.735924, 45.699387, 51.648106>,  <45.529842, 46.029312, 51.554943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735924, 45.699387, 51.648106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306908, -0.431278, -0.848414,
		0.800232, 0.365626, -0.475339,
		0.515206, -0.824813, 0.232909,
		45.890484, 45.451942, 51.717979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890987, 45.914444, 50.894688>,  <45.529842, 46.029312, 51.554943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890987, 45.914444, 50.894688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938629, 45.582039, 51.112030>,  <45.967213, 45.382595, 51.242435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938629, 45.582039, 51.112030>,  <45.890987, 45.914444, 50.894688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938629, 45.582039, 51.112030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014452, -0.548642, -0.835933,
		0.992777, 0.091710, -0.077355,
		0.119104, -0.831012, 0.543353,
		45.974361, 45.332737, 51.275036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525211, 45.579300, 50.664783>,  <45.890987, 45.914444, 50.894688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525211, 45.579300, 50.664783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.307266, 45.293907, 50.840996>,  <46.176498, 45.122673, 50.946724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.307266, 45.293907, 50.840996>,  <46.525211, 45.579300, 50.664783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.307266, 45.293907, 50.840996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059622, -0.557000, -0.828369,
		0.836401, -0.425084, 0.346029,
		-0.544865, -0.713480, 0.440531,
		46.143806, 45.079865, 50.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842781, 44.905258, 50.564564>,  <46.525211, 45.579300, 50.664783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842781, 44.905258, 50.564564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.453644, 44.829021, 50.617111>,  <46.220161, 44.783279, 50.648640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.453644, 44.829021, 50.617111>,  <46.842781, 44.905258, 50.564564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453644, 44.829021, 50.617111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010011, -0.601623, -0.798718,
		0.231263, -0.775709, 0.587191,
		-0.972840, -0.190592, 0.131367,
		46.161793, 44.771843, 50.656521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715679, 44.385010, 50.224152>,  <46.842781, 44.905258, 50.564564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715679, 44.385010, 50.224152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.336792, 44.492062, 50.294746>,  <46.109459, 44.556293, 50.337105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.336792, 44.492062, 50.294746>,  <46.715679, 44.385010, 50.224152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336792, 44.492062, 50.294746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260830, -0.323287, -0.909645,
		-0.186385, -0.907669, 0.376028,
		-0.947222, 0.267624, 0.176491,
		46.052628, 44.572350, 50.347694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396301, 43.839108, 49.756466>,  <46.715679, 44.385010, 50.224152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396301, 43.839108, 49.756466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.095100, 44.090466, 49.834541>,  <45.914379, 44.241280, 49.881386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.095100, 44.090466, 49.834541>,  <46.396301, 43.839108, 49.756466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095100, 44.090466, 49.834541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477326, -0.317470, -0.819374,
		-0.452930, -0.710159, 0.539008,
		-0.753004, 0.628401, 0.195185,
		45.869198, 44.278984, 49.893097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791016, 43.508751, 49.732891>,  <46.396301, 43.839108, 49.756466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791016, 43.508751, 49.732891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.674553, 43.884548, 49.660698>,  <45.604675, 44.110027, 49.617382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.674553, 43.884548, 49.660698>,  <45.791016, 43.508751, 49.732891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674553, 43.884548, 49.660698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536933, -0.316620, -0.781956,
		-0.791789, -0.130766, 0.596633,
		-0.291160, 0.939496, -0.180484,
		45.587204, 44.166397, 49.606552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139317, 43.461746, 49.536289>,  <45.791016, 43.508751, 49.732891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139317, 43.461746, 49.536289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.223999, 43.832069, 49.411037>,  <45.274811, 44.054264, 49.335884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.223999, 43.832069, 49.411037>,  <45.139317, 43.461746, 49.536289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223999, 43.832069, 49.411037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366213, -0.221903, -0.903685,
		-0.906127, 0.305993, 0.292065,
		0.211711, 0.925812, -0.313131,
		45.287514, 44.109814, 49.317097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495338, 43.796726, 49.301022>,  <45.139317, 43.461746, 49.536289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495338, 43.796726, 49.301022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.810570, 43.971455, 49.127533>,  <44.999710, 44.076294, 49.023438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.810570, 43.971455, 49.127533>,  <44.495338, 43.796726, 49.301022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810570, 43.971455, 49.127533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445848, -0.080776, -0.891457,
		-0.424445, 0.895912, 0.131100,
		0.788077, 0.436825, -0.433726,
		45.046993, 44.102501, 48.997414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291168, 44.233223, 48.850834>,  <44.495338, 43.796726, 49.301022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291168, 44.233223, 48.850834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.664795, 44.185295, 48.716278>,  <44.888969, 44.156540, 48.635544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.664795, 44.185295, 48.716278>,  <44.291168, 44.233223, 48.850834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664795, 44.185295, 48.716278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336590, 0.019203, -0.941455,
		0.119264, 0.992610, -0.022393,
		0.934068, -0.119819, -0.336393,
		44.945015, 44.149349, 48.615360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201855, 44.631859, 48.232479>,  <44.291168, 44.233223, 48.850834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201855, 44.631859, 48.232479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.545471, 44.429909, 48.198654>,  <44.751640, 44.308739, 48.178360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.545471, 44.429909, 48.198654>,  <44.201855, 44.631859, 48.232479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545471, 44.429909, 48.198654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083964, 0.023991, -0.996180,
		0.504972, 0.862861, -0.021782,
		0.859042, -0.504872, -0.084564,
		44.803185, 44.278446, 48.173286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716663, 44.996655, 47.715435>,  <44.201855, 44.631859, 48.232479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716663, 44.996655, 47.715435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786385, 44.603657, 47.741768>,  <44.828217, 44.367859, 47.757568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786385, 44.603657, 47.741768>,  <44.716663, 44.996655, 47.715435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786385, 44.603657, 47.741768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053571, -0.076219, -0.995651,
		0.983234, 0.170014, -0.065917,
		0.174299, -0.982490, 0.065833,
		44.838673, 44.308910, 47.761517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185947, 44.970848, 47.267021>,  <44.716663, 44.996655, 47.715435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185947, 44.970848, 47.267021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.068520, 44.589924, 47.300304>,  <44.998062, 44.361370, 47.320274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.068520, 44.589924, 47.300304>,  <45.185947, 44.970848, 47.267021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068520, 44.589924, 47.300304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018435, -0.092671, -0.995526,
		0.955761, -0.290719, 0.044761,
		-0.293566, -0.952310, 0.083212,
		44.980450, 44.304230, 47.325268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575470, 44.570927, 46.807667>,  <45.185947, 44.970848, 47.267021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575470, 44.570927, 46.807667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.240067, 44.363728, 46.875286>,  <45.038826, 44.239407, 46.915859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.240067, 44.363728, 46.875286>,  <45.575470, 44.570927, 46.807667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240067, 44.363728, 46.875286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177710, -0.033306, -0.983519,
		0.515096, -0.854730, -0.064127,
		-0.838508, -0.518003, 0.169050,
		44.988514, 44.208328, 46.926003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577633, 43.978317, 46.294636>,  <45.575470, 44.570927, 46.807667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577633, 43.978317, 46.294636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.199463, 44.029900, 46.414326>,  <44.972561, 44.060848, 46.486141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.199463, 44.029900, 46.414326>,  <45.577633, 43.978317, 46.294636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199463, 44.029900, 46.414326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313646, -0.111416, -0.942981,
		-0.088268, -0.985371, 0.145784,
		-0.945428, 0.128959, 0.299224,
		44.915833, 44.068588, 46.504093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240593, 43.492752, 46.022152>,  <45.577633, 43.978317, 46.294636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240593, 43.492752, 46.022152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.955986, 43.763165, 46.098801>,  <44.785221, 43.925411, 46.144791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.955986, 43.763165, 46.098801>,  <45.240593, 43.492752, 46.022152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955986, 43.763165, 46.098801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227088, 0.036845, -0.973177,
		-0.664959, -0.735951, 0.127303,
		-0.711520, 0.676031, 0.191626,
		44.742531, 43.965973, 46.156288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.064781, 43.759651, 33.626465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.374161, 43.972111, 33.488098>,  <43.559788, 44.099586, 33.405079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.374161, 43.972111, 33.488098>,  <43.064781, 43.759651, 33.626465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374161, 43.972111, 33.488098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491016, 0.156953, -0.856895,
		-0.400846, 0.832615, 0.382198,
		0.773451, 0.531148, -0.345913,
		43.606197, 44.131454, 33.384323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767971, 44.195000, 33.156528>,  <43.064781, 43.759651, 33.626465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767971, 44.195000, 33.156528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152161, 44.213802, 33.046783>,  <43.382675, 44.225086, 32.980938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152161, 44.213802, 33.046783>,  <42.767971, 44.195000, 33.156528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152161, 44.213802, 33.046783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277797, 0.099126, -0.955512,
		-0.017721, 0.993964, 0.108267,
		0.960476, 0.047009, -0.274364,
		43.440304, 44.227905, 32.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833309, 44.760159, 32.738518>,  <42.767971, 44.195000, 33.156528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833309, 44.760159, 32.738518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157120, 44.549183, 32.635384>,  <43.351406, 44.422596, 32.573502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157120, 44.549183, 32.635384>,  <42.833309, 44.760159, 32.738518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157120, 44.549183, 32.635384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243184, 0.098476, -0.964969,
		0.534355, 0.843865, -0.048546,
		0.809522, -0.527442, -0.257835,
		43.399975, 44.390949, 32.558033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486458, 45.284698, 33.078640>,  <42.833309, 44.760159, 32.738518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486458, 45.284698, 33.078640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224564, 45.560268, 32.954247>,  <42.067429, 45.725609, 32.879612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224564, 45.560268, 32.954247>,  <42.486458, 45.284698, 33.078640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224564, 45.560268, 32.954247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110017, 0.493905, 0.862528,
		0.747812, 0.530511, -0.399169,
		-0.654732, 0.688924, -0.310983,
		42.028145, 45.766945, 32.860950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771721, 45.811806, 33.367210>,  <42.486458, 45.284698, 33.078640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771721, 45.811806, 33.367210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393578, 45.914185, 33.286419>,  <42.166691, 45.975613, 33.237946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393578, 45.914185, 33.286419>,  <42.771721, 45.811806, 33.367210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393578, 45.914185, 33.286419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031712, 0.544365, 0.838249,
		0.324500, 0.798847, -0.506501,
		-0.945354, 0.255950, -0.201980,
		42.109970, 45.990971, 33.225826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697987, 46.483002, 33.585442>,  <42.771721, 45.811806, 33.367210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697987, 46.483002, 33.585442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312721, 46.376617, 33.569519>,  <42.081562, 46.312786, 33.559967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312721, 46.376617, 33.569519>,  <42.697987, 46.483002, 33.585442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312721, 46.376617, 33.569519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143101, 0.381556, 0.913202,
		-0.227693, 0.885256, -0.405560,
		-0.963161, -0.265965, -0.039803,
		42.023773, 46.296829, 33.557579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157055, 47.111603, 33.727028>,  <42.697987, 46.483002, 33.585442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157055, 47.111603, 33.727028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974770, 46.768806, 33.823280>,  <41.865398, 46.563129, 33.881031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974770, 46.768806, 33.823280>,  <42.157055, 47.111603, 33.727028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974770, 46.768806, 33.823280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127796, 0.330524, 0.935105,
		-0.880907, 0.395384, -0.260142,
		-0.455709, -0.856986, 0.240633,
		41.838058, 46.511711, 33.895470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558353, 47.304085, 33.996075>,  <42.157055, 47.111603, 33.727028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558353, 47.304085, 33.996075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612610, 46.932541, 34.133961>,  <41.645164, 46.709614, 34.216694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612610, 46.932541, 34.133961>,  <41.558353, 47.304085, 33.996075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612610, 46.932541, 34.133961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198809, 0.315337, 0.927921,
		-0.970606, -0.194400, -0.141892,
		0.135644, -0.928855, 0.344716,
		41.653301, 46.653885, 34.237377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063244, 47.215355, 34.534119>,  <41.558353, 47.304085, 33.996075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063244, 47.215355, 34.534119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.294342, 46.898056, 34.611027>,  <41.433002, 46.707676, 34.657169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.294342, 46.898056, 34.611027>,  <41.063244, 47.215355, 34.534119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294342, 46.898056, 34.611027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307717, 0.006493, 0.951456,
		-0.755986, -0.608867, -0.240344,
		0.577750, -0.793246, 0.192268,
		41.467667, 46.660084, 34.668709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608837, 46.747784, 34.904053>,  <41.063244, 47.215355, 34.534119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608837, 46.747784, 34.904053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989586, 46.661339, 34.990982>,  <41.218037, 46.609470, 35.043140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989586, 46.661339, 34.990982>,  <40.608837, 46.747784, 34.904053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989586, 46.661339, 34.990982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224594, -0.009358, 0.974408,
		-0.208549, -0.976323, -0.057446,
		0.951874, -0.216113, 0.217324,
		41.275146, 46.596504, 35.056179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651627, 46.127991, 35.331982>,  <40.608837, 46.747784, 34.904053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651627, 46.127991, 35.331982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003525, 46.301064, 35.410805>,  <41.214664, 46.404907, 35.458099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003525, 46.301064, 35.410805>,  <40.651627, 46.127991, 35.331982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003525, 46.301064, 35.410805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137882, -0.164482, 0.976696,
		0.455015, -0.886414, -0.085042,
		0.879745, 0.432685, 0.197062,
		41.267448, 46.430870, 35.469925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947495, 45.634983, 35.772091>,  <40.651627, 46.127991, 35.331982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947495, 45.634983, 35.772091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.144852, 45.978767, 35.825588>,  <41.263268, 46.185040, 35.857685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.144852, 45.978767, 35.825588>,  <40.947495, 45.634983, 35.772091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144852, 45.978767, 35.825588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053393, -0.183398, 0.981588,
		0.868167, -0.477167, -0.136376,
		0.493392, 0.859463, 0.133743,
		41.292870, 46.236607, 35.865711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526775, 45.440742, 36.276649>,  <40.947495, 45.634983, 35.772091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526775, 45.440742, 36.276649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.524063, 45.840721, 36.279705>,  <41.522438, 46.080708, 36.281536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.524063, 45.840721, 36.279705>,  <41.526775, 45.440742, 36.276649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524063, 45.840721, 36.279705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091029, -0.006986, 0.995824,
		0.995825, 0.007443, -0.090977,
		-0.006776, 0.999948, 0.007634,
		41.522030, 46.140705, 36.281994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043835, 45.665314, 36.762032>,  <41.526775, 45.440742, 36.276649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043835, 45.665314, 36.762032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777008, 45.963036, 36.749180>,  <41.616913, 46.141666, 36.741470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777008, 45.963036, 36.749180>,  <42.043835, 45.665314, 36.762032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777008, 45.963036, 36.749180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027620, 0.018386, 0.999449,
		0.744483, 0.667589, 0.008293,
		-0.667069, 0.744303, -0.032127,
		41.576889, 46.186325, 36.739540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333958, 46.158283, 37.161991>,  <42.043835, 45.665314, 36.762032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333958, 46.158283, 37.161991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939835, 46.226479, 37.157799>,  <41.703362, 46.267395, 37.155285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939835, 46.226479, 37.157799>,  <42.333958, 46.158283, 37.161991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939835, 46.226479, 37.157799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002625, 0.076468, 0.997069,
		0.170792, 0.982388, -0.075792,
		-0.985304, 0.170490, -0.010481,
		41.644245, 46.277626, 37.154655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206749, 46.825439, 37.502895>,  <42.333958, 46.158283, 37.161991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206749, 46.825439, 37.502895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860992, 46.624474, 37.511047>,  <41.653538, 46.503895, 37.515938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860992, 46.624474, 37.511047>,  <42.206749, 46.825439, 37.502895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860992, 46.624474, 37.511047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080136, 0.177667, 0.980823,
		-0.496398, 0.846178, -0.193834,
		-0.864389, -0.502411, 0.020384,
		41.601677, 46.473751, 37.517162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878086, 47.170395, 37.929970>,  <42.206749, 46.825439, 37.502895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878086, 47.170395, 37.929970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696533, 46.814056, 37.937866>,  <41.587601, 46.600254, 37.942604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696533, 46.814056, 37.937866>,  <41.878086, 47.170395, 37.929970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696533, 46.814056, 37.937866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215563, 0.131269, 0.967626,
		-0.864595, 0.434932, -0.251613,
		-0.453881, -0.890844, 0.019739,
		41.560368, 46.546803, 37.943787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273834, 47.217072, 38.490501>,  <41.878086, 47.170395, 37.929970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273834, 47.217072, 38.490501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368973, 46.833199, 38.430580>,  <41.426056, 46.602875, 38.394627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368973, 46.833199, 38.430580>,  <41.273834, 47.217072, 38.490501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368973, 46.833199, 38.430580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021519, -0.159400, 0.986980,
		-0.971063, -0.231530, -0.058564,
		0.237851, -0.959680, -0.149805,
		41.440327, 46.545296, 38.385639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701694, 46.890255, 38.833263>,  <41.273834, 47.217072, 38.490501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701694, 46.890255, 38.833263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028473, 46.661812, 38.801182>,  <41.224541, 46.524746, 38.781933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028473, 46.661812, 38.801182>,  <40.701694, 46.890255, 38.833263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028473, 46.661812, 38.801182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004014, -0.133439, 0.991049,
		-0.576703, -0.809953, -0.106720,
		0.816944, -0.571113, -0.080206,
		41.273556, 46.490479, 38.777119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610527, 46.370796, 39.247696>,  <40.701694, 46.890255, 38.833263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610527, 46.370796, 39.247696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001274, 46.300720, 39.198643>,  <41.235722, 46.258675, 39.169209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001274, 46.300720, 39.198643>,  <40.610527, 46.370796, 39.247696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001274, 46.300720, 39.198643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090319, -0.181824, 0.979174,
		-0.193857, -0.967596, -0.161793,
		0.976863, -0.175207, -0.122641,
		41.294334, 46.248165, 39.161850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847496, 45.659706, 39.619900>,  <40.610527, 46.370796, 39.247696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847496, 45.659706, 39.619900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169548, 45.893864, 39.581795>,  <41.362782, 46.034359, 39.558933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169548, 45.893864, 39.581795>,  <40.847496, 45.659706, 39.619900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169548, 45.893864, 39.581795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309946, -0.278349, 0.909096,
		0.505665, -0.761468, -0.405549,
		0.805132, 0.585396, -0.095262,
		41.411087, 46.069481, 39.553215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441898, 45.258465, 39.764687>,  <40.847496, 45.659706, 39.619900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441898, 45.258465, 39.764687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578468, 45.630268, 39.820469>,  <41.660408, 45.853352, 39.853939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578468, 45.630268, 39.820469>,  <41.441898, 45.258465, 39.764687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578468, 45.630268, 39.820469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277977, -0.241591, 0.929711,
		0.897864, -0.278658, -0.340866,
		0.341422, 0.929507, 0.139455,
		41.680893, 45.909119, 39.862305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985947, 45.244431, 40.288643>,  <41.441898, 45.258465, 39.764687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985947, 45.244431, 40.288643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.944138, 45.642006, 40.275028>,  <41.919052, 45.880550, 40.266861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.944138, 45.642006, 40.275028>,  <41.985947, 45.244431, 40.288643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944138, 45.642006, 40.275028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289938, 0.063189, 0.954957,
		0.951320, 0.089948, -0.294786,
		-0.104524, 0.993940, -0.034033,
		41.912781, 45.940189, 40.264820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453751, 45.400761, 40.818966>,  <41.985947, 45.244431, 40.288643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453751, 45.400761, 40.818966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261681, 45.749626, 40.781509>,  <42.146439, 45.958946, 40.759037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261681, 45.749626, 40.781509>,  <42.453751, 45.400761, 40.818966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261681, 45.749626, 40.781509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036329, 0.126436, 0.991309,
		0.876419, 0.472602, -0.092396,
		-0.480177, 0.872159, -0.093641,
		42.117626, 46.011272, 40.753418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841515, 45.864182, 41.190075>,  <42.453751, 45.400761, 40.818966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841515, 45.864182, 41.190075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471985, 46.015396, 41.165947>,  <42.250267, 46.106125, 41.151470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471985, 46.015396, 41.165947>,  <42.841515, 45.864182, 41.190075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471985, 46.015396, 41.165947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011479, 0.184860, 0.982698,
		0.382650, 0.907145, -0.175117,
		-0.923822, 0.378040, -0.060324,
		42.194839, 46.128807, 41.147850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011879, 46.433224, 41.602596>,  <42.841515, 45.864182, 41.190075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011879, 46.433224, 41.602596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616920, 46.372459, 41.584824>,  <42.379944, 46.336002, 41.574162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616920, 46.372459, 41.584824>,  <43.011879, 46.433224, 41.602596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616920, 46.372459, 41.584824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033617, -0.073023, 0.996764,
		-0.154661, 0.985694, 0.066996,
		-0.987395, -0.151909, -0.044430,
		42.320702, 46.326885, 41.571495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617950, 46.986530, 42.032955>,  <43.011879, 46.433224, 41.602596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617950, 46.986530, 42.032955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398750, 46.653709, 41.998604>,  <42.267231, 46.454018, 41.977993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398750, 46.653709, 41.998604>,  <42.617950, 46.986530, 42.032955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398750, 46.653709, 41.998604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157103, 0.001536, 0.987581,
		-0.821590, 0.554690, -0.131560,
		-0.548004, -0.832056, -0.085881,
		42.234348, 46.404091, 41.972839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262794, 47.031834, 42.663898>,  <42.617950, 46.986530, 42.032955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262794, 47.031834, 42.663898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197998, 46.656410, 42.541996>,  <42.159119, 46.431156, 42.468857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197998, 46.656410, 42.541996>,  <42.262794, 47.031834, 42.663898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197998, 46.656410, 42.541996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141519, -0.283542, 0.948460,
		-0.976592, 0.196769, -0.086893,
		-0.161990, -0.938555, -0.304752,
		42.149403, 46.374844, 42.450569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685143, 46.821453, 42.998798>,  <42.262794, 47.031834, 42.663898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685143, 46.821453, 42.998798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886932, 46.488106, 42.908470>,  <42.008007, 46.288097, 42.854275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886932, 46.488106, 42.908470>,  <41.685143, 46.821453, 42.998798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886932, 46.488106, 42.908470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261162, -0.396566, 0.880074,
		-0.822982, -0.385000, -0.417703,
		0.504475, -0.833373, -0.225819,
		42.038277, 46.238094, 42.840725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209190, 46.196732, 43.171665>,  <41.685143, 46.821453, 42.998798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209190, 46.196732, 43.171665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.580055, 46.047218, 43.161354>,  <41.802574, 45.957512, 43.155167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.580055, 46.047218, 43.161354>,  <41.209190, 46.196732, 43.171665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580055, 46.047218, 43.161354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177832, -0.499587, 0.847814,
		-0.329776, -0.781473, -0.529667,
		0.927159, -0.373780, -0.025781,
		41.858204, 45.935085, 43.153618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119076, 45.640438, 43.443649>,  <41.209190, 46.196732, 43.171665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119076, 45.640438, 43.443649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516220, 45.670422, 43.480762>,  <41.754505, 45.688412, 43.503029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516220, 45.670422, 43.480762>,  <41.119076, 45.640438, 43.443649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516220, 45.670422, 43.480762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044630, -0.487912, 0.871751,
		0.110613, -0.869669, -0.481083,
		0.992861, 0.074957, 0.092783,
		41.814079, 45.692909, 43.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309601, 44.999790, 43.754906>,  <41.119076, 45.640438, 43.443649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309601, 44.999790, 43.754906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650894, 45.194332, 43.830223>,  <41.855671, 45.311058, 43.875412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650894, 45.194332, 43.830223>,  <41.309601, 44.999790, 43.754906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650894, 45.194332, 43.830223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111435, -0.522705, 0.845199,
		0.509489, -0.700168, -0.500186,
		0.853231, 0.486358, 0.188290,
		41.906864, 45.340240, 43.886711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.812901, 44.474651, 43.850544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965302, 44.802197, 44.022263>,  <42.056744, 44.998726, 44.125294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965302, 44.802197, 44.022263>,  <41.812901, 44.474651, 43.850544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965302, 44.802197, 44.022263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152007, -0.513480, 0.844531,
		0.911993, -0.256512, -0.320110,
		0.381002, 0.818865, 0.429299,
		42.079601, 45.047855, 44.151051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438694, 44.269863, 44.235935>,  <41.812901, 44.474651, 43.850544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438694, 44.269863, 44.235935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308403, 44.602287, 44.416267>,  <42.230228, 44.801743, 44.524467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308403, 44.602287, 44.416267>,  <42.438694, 44.269863, 44.235935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308403, 44.602287, 44.416267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119678, -0.436756, 0.891584,
		0.937859, 0.344367, 0.042804,
		-0.325726, 0.831057, 0.450829,
		42.210686, 44.851604, 44.551517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899010, 44.348221, 44.775703>,  <42.438694, 44.269863, 44.235935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899010, 44.348221, 44.775703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570129, 44.562416, 44.852890>,  <42.372803, 44.690933, 44.899200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570129, 44.562416, 44.852890>,  <42.899010, 44.348221, 44.775703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570129, 44.562416, 44.852890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048128, -0.403203, 0.913844,
		0.567160, 0.742076, 0.357286,
		-0.822200, 0.535491, 0.192966,
		42.323471, 44.723064, 44.910778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506107, 44.626770, 44.602135>,  <42.899010, 44.348221, 44.775703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506107, 44.626770, 44.602135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897903, 44.556904, 44.642307>,  <44.132980, 44.514984, 44.666412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897903, 44.556904, 44.642307>,  <43.506107, 44.626770, 44.602135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897903, 44.556904, 44.642307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128157, 0.155473, -0.979492,
		0.155473, 0.972275, 0.174670,
		0.979492, -0.174670, 0.100432,
		44.191750, 44.504501, 44.672436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851357, 45.301289, 44.368076>,  <43.506107, 44.626770, 44.602135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851357, 45.301289, 44.368076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123619, 45.008835, 44.349522>,  <44.286976, 44.833363, 44.338390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123619, 45.008835, 44.349522>,  <43.851357, 45.301289, 44.368076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123619, 45.008835, 44.349522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123841, 0.177234, -0.976346,
		0.722059, 0.658813, 0.211179,
		0.680658, -0.731132, -0.046385,
		44.327816, 44.789494, 44.335606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424103, 45.657578, 44.068249>,  <43.851357, 45.301289, 44.368076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424103, 45.657578, 44.068249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454399, 45.259628, 44.041435>,  <44.472576, 45.020859, 44.025349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454399, 45.259628, 44.041435>,  <44.424103, 45.657578, 44.068249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454399, 45.259628, 44.041435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269684, 0.085161, -0.959175,
		0.959965, 0.054572, 0.274752,
		0.075742, -0.994871, -0.067035,
		44.477123, 44.961166, 44.021324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023415, 45.547737, 43.690773>,  <44.424103, 45.657578, 44.068249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023415, 45.547737, 43.690773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821358, 45.204300, 43.655785>,  <44.700123, 44.998238, 43.634792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821358, 45.204300, 43.655785>,  <45.023415, 45.547737, 43.690773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821358, 45.204300, 43.655785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210156, -0.024068, -0.977371,
		0.837056, -0.512098, 0.192596,
		-0.505145, -0.858590, -0.087474,
		44.669815, 44.946724, 43.629543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474705, 45.069366, 43.303394>,  <45.023415, 45.547737, 43.690773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474705, 45.069366, 43.303394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099640, 44.934380, 43.270153>,  <44.874599, 44.853390, 43.250206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099640, 44.934380, 43.270153>,  <45.474705, 45.069366, 43.303394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099640, 44.934380, 43.270153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148253, -0.172100, -0.973860,
		0.314339, -0.925473, 0.211402,
		-0.937663, -0.337463, -0.083107,
		44.818340, 44.833141, 43.245220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582436, 44.634216, 42.827652>,  <45.474705, 45.069366, 43.303394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582436, 44.634216, 42.827652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186020, 44.683475, 42.806961>,  <44.948170, 44.713032, 42.794548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186020, 44.683475, 42.806961>,  <45.582436, 44.634216, 42.827652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186020, 44.683475, 42.806961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042605, -0.075580, -0.996229,
		-0.126598, -0.989505, 0.069656,
		-0.991039, 0.123153, -0.051726,
		44.888706, 44.720421, 42.791443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196388, 44.063797, 42.530533>,  <45.582436, 44.634216, 42.827652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196388, 44.063797, 42.530533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927193, 44.356613, 42.488197>,  <44.765675, 44.532303, 42.462795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927193, 44.356613, 42.488197>,  <45.196388, 44.063797, 42.530533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927193, 44.356613, 42.488197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088915, -0.222127, -0.970955,
		-0.734288, -0.644032, 0.214578,
		-0.672990, 0.732040, -0.105841,
		44.725296, 44.576225, 42.456444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554485, 43.799664, 42.282009>,  <45.196388, 44.063797, 42.530533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554485, 43.799664, 42.282009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599754, 44.182976, 42.177025>,  <44.626915, 44.412964, 42.114033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599754, 44.182976, 42.177025>,  <44.554485, 43.799664, 42.282009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599754, 44.182976, 42.177025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141155, -0.245974, -0.958943,
		-0.983498, 0.145573, 0.107429,
		0.113172, 0.958282, -0.262463,
		44.633705, 44.470459, 42.098286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016106, 43.865799, 41.744205>,  <44.554485, 43.799664, 42.282009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016106, 43.865799, 41.744205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252869, 44.183475, 41.689194>,  <44.394924, 44.374081, 41.656185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252869, 44.183475, 41.689194>,  <44.016106, 43.865799, 41.744205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252869, 44.183475, 41.689194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181507, -0.034913, -0.982770,
		-0.785305, 0.606669, 0.123485,
		0.591905, 0.794187, -0.137532,
		44.430439, 44.421730, 41.647934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689259, 44.079727, 41.095329>,  <44.016106, 43.865799, 41.744205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689259, 44.079727, 41.095329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018425, 44.305084, 41.124710>,  <44.215927, 44.440296, 41.142338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018425, 44.305084, 41.124710>,  <43.689259, 44.079727, 41.095329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018425, 44.305084, 41.124710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092395, -0.005145, -0.995709,
		-0.560594, 0.826175, -0.056289,
		0.822920, 0.563390, 0.073450,
		44.265301, 44.474102, 41.146744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593323, 44.748600, 40.720894>,  <43.689259, 44.079727, 41.095329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593323, 44.748600, 40.720894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978851, 44.642727, 40.733498>,  <44.210167, 44.579205, 40.741058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978851, 44.642727, 40.733498>,  <43.593323, 44.748600, 40.720894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978851, 44.642727, 40.733498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030438, -0.008153, -0.999503,
		0.264810, 0.964301, 0.000199,
		0.963820, -0.264684, 0.031511,
		44.267998, 44.563320, 40.742950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953514, 45.057899, 40.150917>,  <43.593323, 44.748600, 40.720894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953514, 45.057899, 40.150917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237068, 44.794796, 40.252762>,  <44.407200, 44.636932, 40.313869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237068, 44.794796, 40.252762>,  <43.953514, 45.057899, 40.150917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237068, 44.794796, 40.252762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378200, 0.049780, -0.924385,
		0.595349, 0.751581, 0.284053,
		0.708890, -0.657760, 0.254611,
		44.449734, 44.597469, 40.329144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529720, 45.291969, 39.854176>,  <43.953514, 45.057899, 40.150917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529720, 45.291969, 39.854176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628273, 44.909168, 39.915409>,  <44.687405, 44.679485, 39.952148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628273, 44.909168, 39.915409>,  <44.529720, 45.291969, 39.854176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628273, 44.909168, 39.915409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193895, -0.106087, -0.975269,
		0.949580, 0.269969, 0.159422,
		0.246380, -0.957007, 0.153084,
		44.702187, 44.622066, 39.961334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061970, 45.238441, 39.452530>,  <44.529720, 45.291969, 39.854176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061970, 45.238441, 39.452530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962540, 44.855885, 39.513870>,  <44.902882, 44.626350, 39.550674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962540, 44.855885, 39.513870>,  <45.061970, 45.238441, 39.452530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962540, 44.855885, 39.513870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151257, -0.194710, -0.969128,
		0.956729, -0.217709, 0.193062,
		-0.248579, -0.956395, 0.153355,
		44.887966, 44.568966, 39.559875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574158, 44.764805, 39.084095>,  <45.061970, 45.238441, 39.452530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574158, 44.764805, 39.084095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241409, 44.552029, 39.147392>,  <45.041759, 44.424362, 39.185371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241409, 44.552029, 39.147392>,  <45.574158, 44.764805, 39.084095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241409, 44.552029, 39.147392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053744, -0.361004, -0.931015,
		0.552368, -0.765975, 0.328895,
		-0.831866, -0.531939, 0.158240,
		44.991848, 44.392448, 39.194866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654427, 43.990288, 38.951141>,  <45.574158, 44.764805, 39.084095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654427, 43.990288, 38.951141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265327, 44.070938, 38.905354>,  <45.031868, 44.119328, 38.877880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265327, 44.070938, 38.905354>,  <45.654427, 43.990288, 38.951141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265327, 44.070938, 38.905354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032270, -0.371185, -0.927998,
		-0.229595, -0.906405, 0.354564,
		-0.972751, 0.201622, -0.114471,
		44.973503, 44.131424, 38.871014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368740, 43.392097, 38.619240>,  <45.654427, 43.990288, 38.951141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368740, 43.392097, 38.619240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085411, 43.664932, 38.546543>,  <44.915413, 43.828632, 38.502926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085411, 43.664932, 38.546543>,  <45.368740, 43.392097, 38.619240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085411, 43.664932, 38.546543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028842, -0.285220, -0.958028,
		-0.705298, -0.673353, 0.221701,
		-0.708324, 0.682090, -0.181744,
		44.872913, 43.869560, 38.492020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821693, 43.049007, 38.183300>,  <45.368740, 43.392097, 38.619240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821693, 43.049007, 38.183300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716103, 43.432659, 38.142525>,  <44.652748, 43.662849, 38.118057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716103, 43.432659, 38.142525>,  <44.821693, 43.049007, 38.183300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716103, 43.432659, 38.142525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226909, -0.164478, -0.959927,
		-0.937458, -0.230269, 0.261053,
		-0.263979, 0.959126, -0.101941,
		44.636909, 43.720398, 38.111942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136051, 43.012005, 37.745529>,  <44.821693, 43.049007, 38.183300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136051, 43.012005, 37.745529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291771, 43.379356, 37.717159>,  <44.385204, 43.599766, 37.700138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291771, 43.379356, 37.717159>,  <44.136051, 43.012005, 37.745529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291771, 43.379356, 37.717159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000235, -0.077099, -0.997023,
		-0.921111, 0.388126, -0.030230,
		0.389301, 0.918376, -0.070925,
		44.408562, 43.654869, 37.695881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801159, 43.326149, 37.249901>,  <44.136051, 43.012005, 37.745529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801159, 43.326149, 37.249901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128708, 43.555546, 37.240540>,  <44.325237, 43.693184, 37.234924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128708, 43.555546, 37.240540>,  <43.801159, 43.326149, 37.249901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128708, 43.555546, 37.240540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046136, 0.025131, -0.998619,
		-0.572113, 0.818825, 0.047038,
		0.818876, 0.573493, -0.023400,
		44.374371, 43.727592, 37.233521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592655, 43.852291, 36.834389>,  <43.801159, 43.326149, 37.249901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592655, 43.852291, 36.834389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989700, 43.899357, 36.846214>,  <44.227928, 43.927597, 36.853310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989700, 43.899357, 36.846214>,  <43.592655, 43.852291, 36.834389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989700, 43.899357, 36.846214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019580, 0.395843, -0.918109,
		-0.119730, 0.910749, 0.395223,
		0.992613, 0.117664, 0.029562,
		44.287483, 43.934654, 36.855083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836567, 44.558735, 36.692276>,  <43.592655, 43.852291, 36.834389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836567, 44.558735, 36.692276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143562, 44.326622, 36.583290>,  <44.327759, 44.187355, 36.517899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143562, 44.326622, 36.583290>,  <43.836567, 44.558735, 36.692276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143562, 44.326622, 36.583290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078228, 0.337060, -0.938228,
		0.636275, 0.741391, 0.213293,
		0.767486, -0.580285, -0.272460,
		44.373810, 44.152534, 36.501553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353069, 45.029755, 36.279594>,  <43.836567, 44.558735, 36.692276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353069, 45.029755, 36.279594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435944, 44.648434, 36.191696>,  <44.485668, 44.419640, 36.138958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435944, 44.648434, 36.191696>,  <44.353069, 45.029755, 36.279594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435944, 44.648434, 36.191696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206065, 0.177059, -0.962386,
		0.956354, 0.244673, -0.159759,
		0.207184, -0.953302, -0.219750,
		44.498100, 44.362442, 36.125771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827045, 45.059216, 35.720051>,  <44.353069, 45.029755, 36.279594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827045, 45.059216, 35.720051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684113, 44.688080, 35.677288>,  <44.598354, 44.465397, 35.651630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684113, 44.688080, 35.677288>,  <44.827045, 45.059216, 35.720051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684113, 44.688080, 35.677288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007621, 0.111561, -0.993728,
		0.933947, -0.355904, -0.032793,
		-0.357331, -0.927840, -0.106905,
		44.576912, 44.409729, 35.645218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193565, 44.728245, 35.133949>,  <44.827045, 45.059216, 35.720051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193565, 44.728245, 35.133949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853531, 44.520336, 35.167858>,  <44.649509, 44.395592, 35.188202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853531, 44.520336, 35.167858>,  <45.193565, 44.728245, 35.133949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853531, 44.520336, 35.167858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102233, 0.004971, -0.994748,
		0.516622, -0.854290, -0.057363,
		-0.850088, -0.519773, 0.084769,
		44.598503, 44.364403, 35.193287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229012, 44.309704, 34.645004>,  <45.193565, 44.728245, 35.133949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229012, 44.309704, 34.645004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842575, 44.292072, 34.746769>,  <44.610714, 44.281494, 34.807827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842575, 44.292072, 34.746769>,  <45.229012, 44.309704, 34.645004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842575, 44.292072, 34.746769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244788, -0.157081, -0.956768,
		0.082131, -0.986602, 0.140966,
		-0.966092, -0.044074, 0.254410,
		44.552746, 44.278851, 34.823093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982227, 43.777664, 34.228951>,  <45.229012, 44.309704, 34.645004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982227, 43.777664, 34.228951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646049, 43.970600, 34.327744>,  <44.444344, 44.086361, 34.387020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646049, 43.970600, 34.327744>,  <44.982227, 43.777664, 34.228951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646049, 43.970600, 34.327744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341434, -0.117404, -0.932545,
		-0.420810, -0.868079, 0.263360,
		-0.840442, 0.482344, 0.246987,
		44.393917, 44.115303, 34.401840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352852, 43.331486, 34.050346>,  <44.982227, 43.777664, 34.228951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352852, 43.331486, 34.050346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238808, 43.714825, 34.057110>,  <44.170383, 43.944828, 34.061169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238808, 43.714825, 34.057110>,  <44.352852, 43.331486, 34.050346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238808, 43.714825, 34.057110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329107, -0.081314, -0.940785,
		-0.900224, -0.273787, 0.338582,
		-0.285107, 0.958347, 0.016905,
		44.153275, 44.002327, 34.062180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640068, 43.352276, 33.791134>,  <44.352852, 43.331486, 34.050346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640068, 43.352276, 33.791134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773155, 43.724705, 33.731258>,  <43.853008, 43.948162, 33.695332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773155, 43.724705, 33.731258>,  <43.640068, 43.352276, 33.791134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773155, 43.724705, 33.731258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542201, 0.059000, -0.838175,
		-0.771566, 0.360043, 0.524457,
		0.332722, 0.931068, -0.149693,
		43.872971, 44.004025, 33.686352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.572601, 43.296177, 45.711933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.561096, 43.693279, 45.758606>,  <44.554192, 43.931541, 45.786610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.561096, 43.693279, 45.758606>,  <44.572601, 43.296177, 45.711933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561096, 43.693279, 45.758606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164979, 0.110418, -0.980097,
		-0.985878, -0.047442, 0.160607,
		-0.028764, 0.992752, 0.116686,
		44.552467, 43.991104, 45.793613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031628, 43.400051, 45.243237>,  <44.572601, 43.296177, 45.711933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031628, 43.400051, 45.243237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.191254, 43.758377, 45.321484>,  <44.287029, 43.973373, 45.368431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.191254, 43.758377, 45.321484>,  <44.031628, 43.400051, 45.243237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191254, 43.758377, 45.321484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212789, 0.298000, -0.930547,
		-0.891890, 0.329724, 0.309540,
		0.399066, 0.895811, 0.195621,
		44.310974, 44.027119, 45.380169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545422, 43.970020, 45.113426>,  <44.031628, 43.400051, 45.243237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545422, 43.970020, 45.113426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.920601, 44.101276, 45.068569>,  <44.145710, 44.180031, 45.041656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.920601, 44.101276, 45.068569>,  <43.545422, 43.970020, 45.113426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920601, 44.101276, 45.068569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186473, 0.204626, -0.960914,
		-0.292371, 0.922199, 0.253119,
		0.937948, 0.328143, -0.112139,
		44.201984, 44.199718, 45.034927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029243, 44.449421, 45.495987>,  <43.545422, 43.970020, 45.113426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029243, 44.449421, 45.495987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.649925, 44.556236, 45.427383>,  <42.422333, 44.620327, 45.386219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.649925, 44.556236, 45.427383>,  <43.029243, 44.449421, 45.495987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649925, 44.556236, 45.427383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228492, -0.199385, 0.952910,
		0.220271, 0.942833, 0.250094,
		-0.948300, 0.267043, -0.171511,
		42.365437, 44.636349, 45.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796841, 44.820679, 46.084015>,  <43.029243, 44.449421, 45.495987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796841, 44.820679, 46.084015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.458229, 44.681488, 45.922867>,  <42.255062, 44.597973, 45.826180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.458229, 44.681488, 45.922867>,  <42.796841, 44.820679, 46.084015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458229, 44.681488, 45.922867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269380, -0.372735, 0.887977,
		-0.459159, 0.860222, 0.221792,
		-0.846527, -0.347976, -0.402872,
		42.204269, 44.577095, 45.802006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166088, 45.086754, 46.444611>,  <42.796841, 44.820679, 46.084015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166088, 45.086754, 46.444611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.079643, 44.730026, 46.285637>,  <42.027779, 44.515991, 46.190254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.079643, 44.730026, 46.285637>,  <42.166088, 45.086754, 46.444611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079643, 44.730026, 46.285637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314167, -0.321890, 0.893133,
		-0.924444, 0.317875, -0.210617,
		-0.216109, -0.891820, -0.397435,
		42.014809, 44.462479, 46.166405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574543, 45.039158, 46.729321>,  <42.166088, 45.086754, 46.444611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574543, 45.039158, 46.729321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683029, 44.666660, 46.631981>,  <41.748119, 44.443161, 46.573578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683029, 44.666660, 46.631981>,  <41.574543, 45.039158, 46.729321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683029, 44.666660, 46.631981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448223, -0.345936, 0.824272,
		-0.851786, -0.114478, -0.511230,
		0.271214, -0.931248, -0.243352,
		41.764393, 44.387287, 46.558975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996719, 44.742474, 46.931454>,  <41.574543, 45.039158, 46.729321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996719, 44.742474, 46.931454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.266754, 44.447399, 46.928070>,  <41.428776, 44.270355, 46.926041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.266754, 44.447399, 46.928070>,  <40.996719, 44.742474, 46.931454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266754, 44.447399, 46.928070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408526, -0.383359, 0.828337,
		-0.614301, -0.555741, -0.560166,
		0.675086, -0.737691, -0.008463,
		41.469280, 44.226093, 46.925529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725338, 44.262547, 47.375343>,  <40.996719, 44.742474, 46.931454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725338, 44.262547, 47.375343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096306, 44.119774, 47.330639>,  <41.318886, 44.034111, 47.303818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096306, 44.119774, 47.330639>,  <40.725338, 44.262547, 47.375343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096306, 44.119774, 47.330639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081961, -0.485499, 0.870387,
		-0.364926, -0.798056, -0.479516,
		0.927422, -0.356929, -0.111762,
		41.374531, 44.012695, 47.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740318, 43.469604, 47.619778>,  <40.725338, 44.262547, 47.375343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740318, 43.469604, 47.619778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.103241, 43.632542, 47.661472>,  <41.320995, 43.730305, 47.686489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.103241, 43.632542, 47.661472>,  <40.740318, 43.469604, 47.619778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103241, 43.632542, 47.661472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050360, -0.351390, 0.934874,
		0.417443, -0.842968, -0.339332,
		0.907307, 0.407345, 0.104234,
		41.375435, 43.754745, 47.692741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073128, 42.959824, 47.980553>,  <40.740318, 43.469604, 47.619778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073128, 42.959824, 47.980553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.260330, 43.312523, 48.004192>,  <41.372654, 43.524143, 48.018375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.260330, 43.312523, 48.004192>,  <41.073128, 42.959824, 47.980553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260330, 43.312523, 48.004192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224741, -0.183434, 0.956997,
		0.854670, -0.434600, -0.284013,
		0.468008, 0.881746, 0.059103,
		41.400734, 43.577045, 48.021923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685196, 42.738049, 48.340813>,  <41.073128, 42.959824, 47.980553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685196, 42.738049, 48.340813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617233, 43.131790, 48.359512>,  <41.576454, 43.368034, 48.370731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617233, 43.131790, 48.359512>,  <41.685196, 42.738049, 48.340813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617233, 43.131790, 48.359512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237712, -0.005098, 0.971323,
		0.956360, 0.176150, -0.233125,
		-0.169910, 0.984350, 0.046748,
		41.566261, 43.427094, 48.373535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140652, 42.851063, 48.854237>,  <41.685196, 42.738049, 48.340813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140652, 42.851063, 48.854237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.910255, 43.178024, 48.850594>,  <41.772018, 43.374203, 48.848408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.910255, 43.178024, 48.850594>,  <42.140652, 42.851063, 48.854237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910255, 43.178024, 48.850594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003079, 0.013312, 0.999907,
		0.817448, 0.575912, -0.010184,
		-0.575994, 0.817403, -0.009108,
		41.737457, 43.423244, 48.847862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402538, 43.337631, 49.418404>,  <42.140652, 42.851063, 48.854237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402538, 43.337631, 49.418404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.037712, 43.481655, 49.339920>,  <41.818817, 43.568069, 49.292831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.037712, 43.481655, 49.339920>,  <42.402538, 43.337631, 49.418404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037712, 43.481655, 49.339920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162957, 0.120817, 0.979208,
		0.376281, 0.925072, -0.051518,
		-0.912062, 0.360062, -0.196209,
		41.764095, 43.589672, 49.281059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492844, 43.907051, 49.693569>,  <42.402538, 43.337631, 49.418404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492844, 43.907051, 49.693569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.103233, 43.821510, 49.663773>,  <41.869469, 43.770187, 49.645893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.103233, 43.821510, 49.663773>,  <42.492844, 43.907051, 49.693569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103233, 43.821510, 49.663773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143051, 0.326044, 0.934469,
		-0.175547, 0.920850, -0.348166,
		-0.974022, -0.213849, -0.074492,
		41.811028, 43.757355, 49.641426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143929, 44.393192, 50.102215>,  <42.492844, 43.907051, 49.693569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143929, 44.393192, 50.102215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.869072, 44.104256, 50.071098>,  <41.704159, 43.930893, 50.052429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.869072, 44.104256, 50.071098>,  <42.143929, 44.393192, 50.102215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869072, 44.104256, 50.071098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273936, 0.158434, 0.948608,
		-0.672899, 0.673138, -0.306744,
		-0.687143, -0.722346, -0.077787,
		41.662930, 43.887550, 50.047764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487011, 44.761658, 50.277313>,  <42.143929, 44.393192, 50.102215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487011, 44.761658, 50.277313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.416428, 44.375568, 50.354469>,  <41.374077, 44.143913, 50.400761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.416428, 44.375568, 50.354469>,  <41.487011, 44.761658, 50.277313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416428, 44.375568, 50.354469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420596, 0.251109, 0.871805,
		-0.889923, 0.072707, -0.450279,
		-0.176455, -0.965224, 0.192888,
		41.363491, 44.086002, 50.412334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797901, 44.709641, 50.590942>,  <41.487011, 44.761658, 50.277313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797901, 44.709641, 50.590942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.905006, 44.340416, 50.701401>,  <40.969269, 44.118881, 50.767673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.905006, 44.340416, 50.701401>,  <40.797901, 44.709641, 50.590942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905006, 44.340416, 50.701401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316943, 0.186272, 0.929973,
		-0.909864, -0.336530, -0.242683,
		0.267759, -0.923065, 0.276143,
		40.985332, 44.063496, 50.784245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225941, 44.391430, 50.906681>,  <40.797901, 44.709641, 50.590942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225941, 44.391430, 50.906681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532715, 44.176304, 51.046715>,  <40.716782, 44.047230, 51.130737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532715, 44.176304, 51.046715>,  <40.225941, 44.391430, 50.906681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532715, 44.176304, 51.046715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277110, 0.214501, 0.936589,
		-0.578804, -0.815320, 0.015476,
		0.766940, -0.537813, 0.350087,
		40.762798, 44.014961, 51.151741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959393, 43.988785, 51.404472>,  <40.225941, 44.391430, 50.906681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959393, 43.988785, 51.404472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.344864, 44.013210, 51.508465>,  <40.576149, 44.027866, 51.570862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.344864, 44.013210, 51.508465>,  <39.959393, 43.988785, 51.404472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344864, 44.013210, 51.508465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253925, 0.511062, 0.821180,
		-0.082722, -0.857372, 0.508007,
		0.963680, 0.061066, 0.259984,
		40.633968, 44.031528, 51.586460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067894, 43.706795, 52.101181>,  <39.959393, 43.988785, 51.404472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067894, 43.706795, 52.101181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.392235, 43.934643, 52.047432>,  <40.586838, 44.071350, 52.015182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.392235, 43.934643, 52.047432>,  <40.067894, 43.706795, 52.101181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392235, 43.934643, 52.047432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198095, 0.483168, 0.852823,
		0.550707, -0.664895, 0.504616,
		0.810852, 0.569617, -0.134372,
		40.635490, 44.105526, 52.007122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421696, 43.741982, 52.799675>,  <40.067894, 43.706795, 52.101181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421696, 43.741982, 52.799675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.502823, 44.042313, 52.548241>,  <40.551498, 44.222511, 52.397381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.502823, 44.042313, 52.548241>,  <40.421696, 43.741982, 52.799675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502823, 44.042313, 52.548241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359367, 0.654214, 0.665477,
		0.910889, 0.090922, 0.402510,
		0.202820, 0.750825, -0.628591,
		40.563667, 44.267559, 52.359665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793705, 44.234097, 53.227203>,  <40.421696, 43.741982, 52.799675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793705, 44.234097, 53.227203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676628, 44.460075, 52.918613>,  <40.606384, 44.595665, 52.733459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676628, 44.460075, 52.918613>,  <40.793705, 44.234097, 53.227203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676628, 44.460075, 52.918613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148640, 0.770113, 0.620348,
		0.944584, 0.296240, -0.141429,
		-0.292688, 0.564949, -0.771470,
		40.588821, 44.629559, 52.687172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044132, 44.878117, 53.327736>,  <40.793705, 44.234097, 53.227203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044132, 44.878117, 53.327736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.752022, 44.962650, 53.067879>,  <40.576756, 45.013371, 52.911964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.752022, 44.962650, 53.067879>,  <41.044132, 44.878117, 53.327736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752022, 44.962650, 53.067879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258272, 0.794957, 0.548943,
		0.632449, 0.568664, -0.525956,
		-0.730277, 0.211338, -0.649640,
		40.532940, 45.026051, 52.872986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154667, 45.545502, 53.193275>,  <41.044132, 44.878117, 53.327736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154667, 45.545502, 53.193275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776169, 45.440910, 53.117119>,  <40.549068, 45.378155, 53.071426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776169, 45.440910, 53.117119>,  <41.154667, 45.545502, 53.193275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776169, 45.440910, 53.117119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319602, 0.846380, 0.426022,
		0.049746, 0.463970, -0.884453,
		-0.946245, -0.261480, -0.190390,
		40.492294, 45.362465, 53.060001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938274, 46.125080, 53.194958>,  <41.154667, 45.545502, 53.193275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938274, 46.125080, 53.194958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582077, 45.944096, 53.175751>,  <40.368359, 45.835503, 53.164227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582077, 45.944096, 53.175751>,  <40.938274, 46.125080, 53.194958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582077, 45.944096, 53.175751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417973, 0.771747, 0.479276,
		-0.179798, 0.446860, -0.876350,
		-0.890489, -0.452463, -0.048017,
		40.314930, 45.808357, 53.161346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438774, 46.624523, 53.069668>,  <40.938274, 46.125080, 53.194958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438774, 46.624523, 53.069668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235352, 46.319328, 53.229279>,  <40.113300, 46.136211, 53.325047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235352, 46.319328, 53.229279>,  <40.438774, 46.624523, 53.069668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235352, 46.319328, 53.229279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396739, 0.618950, 0.677863,
		-0.764179, 0.186420, -0.617477,
		-0.508555, -0.762986, 0.399029,
		40.082787, 46.090431, 53.348988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693188, 46.808376, 53.026501>,  <40.438774, 46.624523, 53.069668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693188, 46.808376, 53.026501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722672, 46.527527, 53.309792>,  <39.740360, 46.359016, 53.479767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722672, 46.527527, 53.309792>,  <39.693188, 46.808376, 53.026501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722672, 46.527527, 53.309792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553982, 0.561687, 0.614501,
		-0.829259, -0.437642, -0.347562,
		0.073710, -0.702124, 0.708230,
		39.744785, 46.316891, 53.522259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012150, 46.849594, 53.345520>,  <39.693188, 46.808376, 53.026501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012150, 46.849594, 53.345520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.252914, 46.659348, 53.602112>,  <39.397373, 46.545200, 53.756065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.252914, 46.659348, 53.602112>,  <39.012150, 46.849594, 53.345520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252914, 46.659348, 53.602112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486385, 0.418753, 0.766861,
		-0.633352, -0.773587, 0.020719,
		0.601910, -0.475615, 0.641479,
		39.433487, 46.516663, 53.794556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627262, 46.475773, 53.891010>,  <39.012150, 46.849594, 53.345520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627262, 46.475773, 53.891010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985397, 46.554977, 54.050591>,  <39.200279, 46.602501, 54.146339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985397, 46.554977, 54.050591>,  <38.627262, 46.475773, 53.891010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985397, 46.554977, 54.050591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443961, 0.325174, 0.834961,
		0.035598, -0.924692, 0.379048,
		0.895338, 0.198006, 0.398952,
		39.253998, 46.614380, 54.170277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625656, 46.205669, 54.544197>,  <38.627262, 46.475773, 53.891010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625656, 46.205669, 54.544197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925247, 46.470642, 54.550159>,  <39.105000, 46.629627, 54.553738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925247, 46.470642, 54.550159>,  <38.625656, 46.205669, 54.544197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925247, 46.470642, 54.550159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322868, 0.345223, 0.881236,
		0.578614, -0.664835, 0.472441,
		0.748975, 0.662431, 0.014903,
		39.149940, 46.669373, 54.554630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875469, 46.224365, 55.241840>,  <38.625656, 46.205669, 54.544197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875469, 46.224365, 55.241840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050285, 46.556404, 55.103313>,  <39.155174, 46.755627, 55.020199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050285, 46.556404, 55.103313>,  <38.875469, 46.224365, 55.241840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050285, 46.556404, 55.103313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261486, 0.485668, 0.834117,
		0.860593, -0.273986, 0.429315,
		0.437041, 0.830095, -0.346319,
		39.181396, 46.805431, 54.999416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301003, 46.407742, 55.840836>,  <38.875469, 46.224365, 55.241840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301003, 46.407742, 55.840836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244789, 46.723389, 55.601654>,  <39.211060, 46.912777, 55.458145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244789, 46.723389, 55.601654>,  <39.301003, 46.407742, 55.840836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244789, 46.723389, 55.601654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575470, 0.426344, 0.697900,
		0.805657, 0.442184, 0.394195,
		-0.140538, 0.789116, -0.597951,
		39.202629, 46.960125, 55.422268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472954, 46.898415, 56.235737>,  <39.301003, 46.407742, 55.840836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472954, 46.898415, 56.235737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253700, 47.087074, 55.959450>,  <39.122147, 47.200272, 55.793678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253700, 47.087074, 55.959450>,  <39.472954, 46.898415, 56.235737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253700, 47.087074, 55.959450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444471, 0.535315, 0.718250,
		0.708516, 0.700703, -0.083789,
		-0.548133, 0.471650, -0.690721,
		39.089260, 47.228569, 55.752232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445335, 47.617237, 56.548836>,  <39.472954, 46.898415, 56.235737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445335, 47.617237, 56.548836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172676, 47.581741, 56.258324>,  <39.009083, 47.560444, 56.084015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172676, 47.581741, 56.258324>,  <39.445335, 47.617237, 56.548836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172676, 47.581741, 56.258324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588773, 0.655844, 0.472457,
		0.434404, 0.749663, -0.499297,
		-0.681644, -0.088736, -0.726283,
		38.968182, 47.555122, 56.040440>
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
