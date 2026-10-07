# Fractional RLC Circuit Research

**English paper · 6 pages · IEEE two-column format · exactly 100 abstract words · 5 references**

## Download / التنزيل

- [Download the research paper (PDF)](https://github.com/melabouab-alt/coexx/raw/refs/heads/main/Fractional_RLC/Fractional_RLC_IEEE_6_Pages.pdf)
- [Download the complete research package (ZIP)](https://github.com/melabouab-alt/coexx/raw/refs/heads/main/Fractional_RLC/Fractional_RLC_Research_Package.zip)
- [MATLAB study code](rlc_fractional_study.m)
- [Compact MATLAB demonstration](rlc_demo.m)

The ZIP includes the paper, MATLAB code, editable LaTeX source, vector and PNG figures, the Python reproduction program, and numerical data and validation files.

## What the paper studies

A dimensionally consistent series RLC model with Caputo derivative orders 0.8, 0.9, and 1.0. It compares step voltage, current, frequency response, overshoot, and both 2% and 1% settling tolerances. The ordinary RLC case is recovered at order 1.

The reference circuit is R = 10 ohm, L = 10 mH, and C = 100 microfarad, driven by a 1 V step. Below order 1 the elements follow the generalized constitutive laws defined in the paper. The findings are numerical model results, not hardware measurements.

## Run MATLAB

Download or clone this folder, open it as the current MATLAB folder, and run:

```matlab
results = rlc_fractional_study;
```

No optional MATLAB toolbox is needed. Generated plots, CSV files, and states are saved in `matlab_results`. See [MATLAB reproduction details](README_matlab.md).

The published calculations were executed in Python and independently checked against an exact classical solution and numerical inverse Laplace transformation. MATLAB was unavailable during preparation; the MATLAB code received independent static review, but native MATLAB execution is not claimed.

## Editable source

Extract the ZIP and open `rlc_paper/source/paper.tex`. Add the student's actual name and affiliation if required. Compile with `pdflatex` twice. The supplied figures permit compilation without rerunning the numerical study.
