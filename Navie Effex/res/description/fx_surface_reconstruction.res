CONTAINER fx_surface_reconstruction
{
	NAME fx_surface_reconstruction;
	INCLUDE fx_base_volume;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{			
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK SURFACE_RECONSTRUCTION_GROUP {ACCEPT{fx_particlegroup;  fx_group;1001381; Obase; Oparticle;1027133;}; }
			BUTTON SURFACE_RECONSTRUCTION_GROUP_SELECTOR {}
			LINK SURFACE_RECONSTRUCTION_SURFACE_TRACKER {ACCEPT{fx_liquid; fx_group;}; }
			BUTTON SURFACE_RECONSTRUCTION_SURFACE_TRACKER_SELECTOR {}
			LINK SURFACE_RECONSTRUCTION_KERNEL {ACCEPT{fx_kernel; fx_group;}; }
			BUTTON SURFACE_RECONSTRUCTION_KERNEL_SELECTOR {}
		}

		BOOL SURFACE_RECONSTRUCTION_RENDERONLY {}
		LONG SURFACE_RECONSTRUCTION_PARTICLES
		{
			ANIM OFF;
			CYCLE
			{
				SURFACE_RECONSTRUCTION_PARTICLES_PASSIVE;
				SURFACE_RECONSTRUCTION_PARTICLES_LIQUID;
				SURFACE_RECONSTRUCTION_PARTICLES_VORTICITY;
				SURFACE_RECONSTRUCTION_PARTICLES_FOAM;
			}
		}
		REAL SURFACE_RECONSTRUCTION_VOXELSCALE {MIN 1; MAX 5;}

		SEPARATOR {LINE;}

		LONG SURFACE_RECONSTRUCTION_SURFACETYPE
		{
			CYCLE
			{
				SURFACE_RECONSTRUCTION_SURFACETYPE_ISOTROPIC;
				//SURFACE_RECONSTRUCTION_SURFACETYPE_ANISOTROPIC;
				SURFACE_RECONSTRUCTION_SURFACETYPE_ANISOTROPICDIST;
			}
		}
		LONG SURFACE_RECONSTRUCTION_SEARCHCOUNT_MIN { MIN 1; MAX 1000; }
		LONG SURFACE_RECONSTRUCTION_SEARCHCOUNT_MAX { MIN 1; MAX 1000; }

		REAL SURFACE_RECONSTRUCTION_RADIUS {MIN 0.001; STEP 0.1;}
		REAL SURFACE_RECONSTRUCTION_SMOOTHINGRADIUS {MIN 2; STEP 0.1;}

		GROUP SURFACE_RECONSTRUCTION_ISOTROPIC
		{			
			DEFAULT 1;
			LONG SURFACE_RECONSTRUCTION_ISOTROPIC_POSITION
			{
				CYCLE
				{
					SURFACE_RECONSTRUCTION_ISOTROPIC_POSITION_POS;
					SURFACE_RECONSTRUCTION_ISOTROPIC_POSITION_WEIGHTED;
					SURFACE_RECONSTRUCTION_ISOTROPIC_POSITION_DEFORMED;
				}
			}
			BOOL SURFACE_RECONSTRUCTION_ISOTROPIC_USEDENSITYPOS {}
			BOOL SURFACE_RECONSTRUCTION_ISOTROPIC_USEISODENSITY {}
			REAL SURFACE_RECONSTRUCTION_ISOTROPIC_DECAYMIN {MIN 0; STEP 0.1;}
			REAL SURFACE_RECONSTRUCTION_ISOTROPIC_DECAYMAX {MIN 0.01; STEP 0.1;}
		}
		GROUP SURFACE_RECONSTRUCTION_ANISOTROPIC
		{	
			DEFAULT 1;
			REAL SURFACE_RECONSTRUCTION_ANISOTROPIC_CONSTRAINT_RATIO {MIN 1; STEP 0.1;}
			REAL SURFACE_RECONSTRUCTION_ANISOTROPIC_MAXSTRETCH { MIN 1; STEP 0.1;}
		}	
	}
	GROUP ID_FORCE_BASE_CONSTRAINTS
	{		
		BOOL SURFACE_RECONSTRUCTION_ANISOTROPIC_AUTORADIUS {}
		REAL SURFACE_RECONSTRUCTION_ISOSURFACE { MIN 0; MAX 100; UNIT PERCENT;}
		REAL SURFACE_RECONSTRUCTION_SURFACE_TRACKER_DISTANCE {MIN 0.0;}	
	}
}