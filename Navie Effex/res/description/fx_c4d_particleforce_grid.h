#ifndef FX_C4D_PARTICLEFORCE_GRID_H
#define FX_C4D_PARTICLEFORCE_GRID_H

enum
{
    ID_OBJECT = 3000,

	GRID_PARTICLEFORCE_DYNAMICS = 2000,
	GRID_PARTICLEFORCE_STRENGTH,
	GRID_PARTICLEFORCE_INSIDELIQUID,
	GRID_PARTICLEFORCE_BLENDORIG,
	GRID_PARTICLEFORCE_BUOYANCY,
	GRID_PARTICLEFORCE_TIMESTEP_MODE = 2005,
		GRID_PARTICLEFORCE_TIMESTEP_MODE_SIM = 0,
		GRID_PARTICLEFORCE_TIMESTEP_MODE_C4D,
		GRID_PARTICLEFORCE_TIMESTEP_MODE_CUSTOM,
	GRID_PARTICLEFORCE_TIMESTEP = 2006,
	GRID_PARTICLEFORCE_DRAG,
	GRID_PARTICLEFORCE_DYNAMICS_SELECTOR,

	GRID_PARTICLEFORCE_DUMMY_
		
};

#endif