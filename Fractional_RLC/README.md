# Fractional RLC Circuit Research

**Author:** Fatema Alzahraa Ahmed Elshareef  
**Affiliation:** Department of Electrical Engineering, University of Tripoli

**English paper · 6 pages · IEEE two-column format · exactly 100 abstract words · 5 references**

The requested visual styling uses a dark royal blue title and headings, a pale blue framed abstract, and coordinated blue tables and curves. The author details also appear at the top of the MATLAB code.

## Download / التنزيل

- [Download the research paper (PDF)](https://github.com/melabouab-alt/coexx/raw/refs/heads/main/Fractional_RLC/Fractional_RLC_IEEE_6_Pages.pdf)
- [Download the complete research package (ZIP)](https://github.com/melabouab-alt/coexx/raw/refs/heads/main/Fractional_RLC/Fractional_RLC_Research_Package.zip)
- [MATLAB study code](rlc_fractional_study.m)
- [Compact MATLAB demonstration](rlc_demo.m)

The ZIP includes the paper, MATLAB code, editable LaTeX source, vector and PNG figures, the Python reproduction program, and numerical data and validation files.


## دليل فهم ومناقشة البحث بالعربية

- [تحميل دليل الشرح بالعربية (PDF)](https://github.com/melabouab-alt/coexx/raw/refs/heads/main/Fractional_RLC/Fractional_RLC_Arabic_Explanation.pdf)
- [تحميل النسخة القابلة للتعديل (Word)](https://github.com/melabouab-alt/coexx/raw/refs/heads/main/Fractional_RLC/Fractional_RLC_Arabic_Explanation.docx)

دليل مستقل من 33 صفحة يشرح الأساسيات والملخص جملةً جملة، وكل المعادلات الـ29، والرسوم الخمسة والجداول الثلاثة، وكود MATLAB. يتضمن 32 سؤالاً للمناقشة، وعرضاً قصيراً بالعربية والإنجليزية، وخطة مراجعة وتمارين بإجاباتها. أرقام المعادلات والأشكال والجداول تشير إلى الورقة الأصلية ذات الصفحات الست. ابدئي بالأساسيات، ثم الرسوم والنتائج، وبعدها المعادلات والكود والأسئلة.

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

Extract the ZIP and open `rlc_paper/source/paper.tex`. The author and affiliation are already included. Compile with `pdflatex` twice. The supplied figures permit compilation without rerunning the numerical study.
