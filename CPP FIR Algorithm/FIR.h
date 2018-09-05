#ifndef FIR_H
#define FIR_H

#include <string>
#include <cstdio>

class FIR
{
public:
	FIR(double *coefficients, unsigned number_of_taps);
	~FIR();

	double filter(double input);

	void reset();

	unsigned getTaps() {return taps;};
	
private:
	double        *coefficients;
	double        *buffer;
	unsigned      taps, offset;

};

#endif
