CONTAINER fx_property_scalar
{
	NAME fx_property_scalar;
	INCLUDE fx_property;
	HIDE FX_BASE;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		REAL PROPERTY_VALUE_SCALAR { CUSTOMGUI DOUBLE; DSIZE 70; DDIGITS 8; STEP 0.01; }
	}
}