#!/usr/bin/env python3

def warn(*args, **kwargs):
    pass
    
import os, warnings
warnings.warn = warn

from ecradplot import plot as eplt

def main(input_srcfile, reference_output_srcfile, output_srcfile, dstdir):
    """
    Plot radiation fields (fluxes, CRE, and heating rates) 
    """
    
    import os
    if not os.path.isdir(dstdir):
        os.makedirs(dstdir)

    name_string = os.path.splitext(os.path.basename(input_srcfile))[0]
    output_string = os.path.splitext(os.path.basename(output_srcfile))[0]
    reference_name_string = os.path.splitext(os.path.basename(reference_output_srcfile))[0]

    dstfile = os.path.join(dstdir, f"{name_string}_{output_string}_vs_{reference_name_string}.png")

    print(f"Plotting output to {dstfile}")
    eplt.compare_output(input_srcfile, reference_output_srcfile, output_srcfile, dstfile=dstfile)
            
    
if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Plot radiative fluxes and heating rates from ecRAD output file.")
    parser.add_argument("input",    help="ecRAD input file")
    parser.add_argument("reference", help='ecRAD output file to use as a reference')
    parser.add_argument("output",   help="ecRAD output file")
    parser.add_argument("--dstdir", help="Destination directory for plots", default="./")
    args = parser.parse_args()
    
    main(args.input, args.reference, args.output, args.dstdir)
