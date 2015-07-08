# mtools by srinivas.gs

This repository contains a bunch of useful scripts and functions that make working in MATLAB much easier. All my other MATLAB repositories depend on this. Feel free to do with this what you will. 

<!-- MarkdownTOC -->

- [List of Functions](#list-of-functions)
  - [AngularDifference.m](#angulardifferencem)
  - [BestDistribution.m](#bestdistributionm)
  - [CheckForNewestVersionOnGitHub.m](#checkfornewestversionongithubm)
  - [CleanPublish.m](#cleanpublishm)
  - [ComputeOnsOffs.m](#computeonsoffsm)
  - [Cost2.m](#cost2m)
  - [CutImage.m](#cutimagem)
  - [DataHash.m](#datahashm)
  - [DesignFig.m](#designfigm)
  - [FindBestFilter.m](#findbestfilterm)
  - [FindCorrelationTime.m](#findcorrelationtimem)
  - [FindShortestDimension.m](#findshortestdimensionm)
  - [FitFilter2Data.m](#fitfilter2datam)
  - [FitModel2Data.m](#fitmodel2datam)
  - [GammaDist.m](#gammadistm)
  - [GetLatestHash.m](#getlatesthashm)
  - [GetLinks.m](#getlinksm)
  - [GitHash.m](#githashm)
  - [MakePDF.m](#makepdfm)
  - [ManualCluster.m](#manualclusterm)
  - [ParseHTML.m](#parsehtmlm)
  - [PrettyFig.m](#prettyfigm)
  - [RandomString.m](#randomstringm)
  - [RemovePointDefects.m](#removepointdefectsm)
  - [SaturationPlane.m](#saturationplanem)
  - [StripPath.m](#strippathm)
  - [TrialPlot.m](#trialplotm)
  - [arginnames.m](#arginnamesm)
  - [argoutnames.m](#argoutnamesm)
  - [autocorr2d.m](#autocorr2dm)
  - [autoplot.m](#autoplotm)
  - [barfit.m](#barfitm)
  - [barwitherr.m](#barwitherrm)
  - [cache.m](#cachem)
  - [circle.m](#circlem)
  - [cluster_dp.m](#cluster_dpm)
  - [console.m](#consolem)
  - [convolve.m](#convolvem)
  - [cv.m](#cvm)
  - [deconvolve.m](#deconvolvem)
  - [dift.m](#diftm)
  - [dist_gamma2.m](#dist_gamma2m)
  - [dist_gauss2.m](#dist_gauss2m)
  - [distance.m](#distancem)
  - [duplicateFigure.m](#duplicatefigurem)
  - [elasticnet.m](#elasticnetm)
  - [errorShade.m](#errorshadem)
  - [errorbarxy.m](#errorbarxym)
  - [filter_alpha.m](#filter_alpham)
  - [filter_alpha2.m](#filter_alpha2m)
  - [filter_exp.m](#filter_expm)
  - [filter_exp2.m](#filter_exp2m)
  - [filter_gamma.m](#filter_gammam)
  - [filter_gamma2.m](#filter_gamma2m)
  - [find_data.m](#find_datam)
  - [foldername.m](#foldernamem)
  - [getAllFiles.m](#getallfilesm)
  - [getBounds.m](#getboundsm)
  - [getComputerName.m](#getcomputernamem)
  - [getModelParameters.m](#getmodelparametersm)
  - [gini.m](#ginim)
  - [hill.m](#hillm)
  - [hill2.m](#hill2m)
  - [hill4.m](#hill4m)
  - [ihill.m](#ihillm)
  - [ihill2.m](#ihill2m)
  - [install.m](#installm)
  - [iseven.m](#isevenm)
  - [l1eq_pd.m](#l1eq_pdm)
  - [l2.m](#l2m)
  - [larsen.m](#larsenm)
  - [logistic.m](#logisticm)
  - [logistic4.m](#logistic4m)
  - [mat2struct.m](#mat2structm)
  - [mdot.m](#mdotm)
  - [mean2.m](#mean2m)
  - [min2.m](#min2m)
  - [modInv.m](#modinvm)
  - [modd.m](#moddm)
  - [multiplot.m](#multiplotm)
  - [nonnans.m](#nonnansm)
  - [online.m](#onlinem)
  - [oss.m](#ossm)
  - [oval.m](#ovalm)
  - [pdfrnd.m](#pdfrndm)
  - [powerspec.m](#powerspecm)
  - [raster2.m](#raster2m)
  - [rdir.m](#rdirm)
  - [revCorrFilter.m](#revcorrfilterm)
  - [rsquare.m](#rsquarem)
  - [searchpath.m](#searchpathm)
  - [shadedErrorBar.m](#shadederrorbarm)
  - [spear.m](#spearm)
  - [spellcheck.m](#spellcheckm)
  - [spiketimes2f.m](#spiketimes2fm)
  - [spinner.m](#spinnerm)
  - [splinehist.m](#splinehistm)
  - [strkat.m](#strkatm)
  - [struct2mat.m](#struct2matm)
  - [summarise.m](#summarisem)
  - [sweetspot.m](#sweetspotm)
  - [textbar.m](#textbarm)
  - [totient.m](#totientm)
  - [triangle.m](#trianglem)
  - [uid.m](#uidm)
  - [width.m](#widthm)
  - [xcoeff.m](#xcoeffm)
  - [General Notes on Usage](#general-notes-on-usage)
- [Installation](#installation)
- [Detailed Notes](#detailed-notes)
  - [MakePDF.m and CleanPublish.m](#makepdfm-and-cleanpublishm)
  - [textbar.m](#textbarm-1)
  - [Manipulate.m](#manipulatem)
  - [oval.m](#ovalm-1)

<!-- /MarkdownTOC -->


# List of Functions 

Click on the links to go to the doc page of that funciton. 

### [AngularDifference.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/AngularDifference.m)
computes absolute angular distance between two angles in degrees
### [BestDistribution.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/BestDistribution.m)
this function is meant to be optimised by FitModel2Data
### [CheckForNewestVersionOnGitHub.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/CheckForNewestVersionOnGitHub.m)
usage: m = CheckForNewestVersionOnGitHub(reponame,filename,VersionName)
### [CleanPublish.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/CleanPublish.m)
CleanPublish removes all the junk created by MATLAB's publish() function in the html/ folder in the current directory. Make sure you compile the PDF before running this! 
### [ComputeOnsOffs.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/ComputeOnsOffs.m)
given a logical vector x, this function returns the on and off times of the logical vector
### [Cost2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/Cost2.m)
computes a cost for two vectors
### [CutImage.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/CutImage.m)
cuts a small square of an image out a bigger image.
### [DataHash.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/DataHash.m)
This function creates a hash value for an input of any type. The type and
### [DesignFig.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/DesignFig.m)
interactively design a figure with multiple subplots and get DesignFig to make the code for you
### [FindBestFilter.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/FindBestFilter.m)
created by Srinivas Gorur-Shandilya at 17:31 , 15 January 2014. Contact me at http://srinivas.gs/contact/
### [FindCorrelationTime.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/FindCorrelationTime.m)
finds the correlation time of a vector. returns an answer in the units of vector indices
### [FindShortestDimension.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/FindShortestDimension.m)
finds the shortest dimension in a multidimensional matrix x
### [FitFilter2Data.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/FitFilter2Data.m)
fits a linear filter to data.
### [FitModel2Data.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/FitModel2Data.m)
fits a model specified by a file that is of the following form:
### [GammaDist.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/GammaDist.m)
generate a parametric gamma distribution
### [GetLatestHash.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/GetLatestHash.m)
gets the SHA-1 hash of the latest git commit at online repository. 
### [GetLinks.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/GetLinks.m)
gets links from a snippet of HTML text (h)
### [GitHash.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/GitHash.m)
finds the hash of the current commit of the git repository of the given file
### [MakePDF.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/MakePDF.m)
a wrapper for MATLAB's publish() function, it makes a PDF directly from the .tex that MATLAB creates and cleans up afterwards.
### [ManualCluster.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/ManualCluster.m)
allows you to manually cluster a reduced-to-2D-dataset by drawling lines around clusters
### [ParseHTML.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/ParseHTML.m)
created by Srinivas Gorur-Shandilya at 14:11 , 19 February 2014. Contact me at http://srinivas.gs/contact/
### [PrettyFig.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/PrettyFig.m)
makes current figure pretty:
### [RandomString.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/RandomString.m)
makes a random string
### [RemovePointDefects.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/RemovePointDefects.m)
removes large, single time point excursions from signal
### [SaturationPlane.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/SaturationPlane.m)
calculates the saturation plane from a 3-channel image. 
### [StripPath.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/StripPath.m)
strips the path from a complete path to a file
### [TrialPlot.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/TrialPlot.m)
created by Srinivas Gorur-Shandilya at 11:21 , 25 August 2011. Contact me
### [arginnames.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/arginnames.m)
returns a cell containing the names of the variables that are returned by a function, as defined in the function. 
### [argoutnames.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/argoutnames.m)
returns a cell containing the names of the variables that are returned by a function, as defined in the function. 
### [autocorr2d.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/autocorr2d.m)
2D autocorrelation of a matrix (image)
### [autoplot.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/autoplot.m)
autoplot is a wrapper for subplot that allows you to simplify figure creation where you know the number of plots, but don't want to bother to calcualte how many subplots you want in the X and Y directions. 
### [barfit.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/barfit.m)

### [barwitherr.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/barwitherr.m)

### [cache.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/cache.m)
fast, hash-based cache function to speed up computation. 
### [circle.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/circle.m)
plots a circle
### [cluster_dp.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/cluster_dp.m)
"Density peaks" based clustering
### [console.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/console.m)
logs messages to console
### [convolve.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/convolve.m)
convolve is just like filter.m, but accepts a-causal filters.
### [cv.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/cv.m)
usage:
### [deconvolve.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/deconvolve.m)
Devonvolves a signal using Wiener deconvoltuion
### [dift.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/dift.m)
derivative of a non-regularly sampled time series
### [dist_gamma2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/dist_gamma2.m)
distribution based on two gamma functions
### [dist_gauss2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/dist_gauss2.m)
distribution from a mixture of 2 gaussians
### [distance.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/distance.m)
finds the distance (l-2 norm) b/w two points
### [duplicateFigure.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/duplicateFigure.m)
creates a duplicate of the figure that you have right now
### [elasticnet.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/elasticnet.m)
  Elastic Net.
### [errorShade.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/errorShade.m)
a fast error-shading plot function
### [errorbarxy.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/errorbarxy.m)
error bars in both X and Y
### [filter_alpha.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/filter_alpha.m)
2 parameter bilobed filter based on an alpha function
### [filter_alpha2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/filter_alpha2.m)
four parameter bilobed filter based on an alpha function
### [filter_exp.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/filter_exp.m)
exponentially decaying filter
### [filter_exp2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/filter_exp2.m)
2-lobed exponentially decaying filter
### [filter_gamma.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/filter_gamma.m)
usage:  f = filter_gamma(tau,n,A,t)
### [filter_gamma2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/filter_gamma2.m)
usage: f = filter_gamma2(t,p)
### [find_data.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/find_data.m)
created by Srinivas Gorur-Shandilya at 12:47 , 28 August 2013. Contact me
### [foldername.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/foldername.m)
returns the current folder's name
### [getAllFiles.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/getAllFiles.m)
recursively get all files from a specific directory 
### [getBounds.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/getBounds.m)
gets upper and lower bounds by reading a .m file
### [getComputerName.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/getComputerName.m)
returns the host name of the computer
### [getModelParameters.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/getModelParameters.m)
usage:
### [gini.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/gini.m)
Givne these values, this computes the GINI coefficient according to
### [hill.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/hill.m)
usage: r = hill(x,xdata)
### [hill2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/hill2.m)
usage: r = hill2(x,xdata)
### [hill4.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/hill4.m)
4-parameter Hill function
### [ihill.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/ihill.m)
Inverse Hill Function
### [ihill2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/ihill2.m)
2-parameter Inverse Hill Function
### [install.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/install.m)
install.m is a package manager for my MATLAB code
### [iseven.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/iseven.m)
is the number even or not?
### [l1eq_pd.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/l1eq_pd.m)

### [l2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/l2.m)
calcualtes the l2 norm between 2 vectors a and b
### [larsen.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/larsen.m)
The LARS-EN algorithm for estimating Elastic Net solutions.
### [logistic.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/logistic.m)
usage: r = logistic(x,xdata)
### [logistic4.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/logistic4.m)
usage: r = logisti4(x,xdata)
### [mat2struct.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/mat2struct.m)
converts a vector into a structure
### [mdot.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/mdot.m)
mdot returns the column-wise dot product of a matrix
### [mean2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/mean2.m)
mean2 differs from mean in two different ways: it ignores NaNs, and if provided a matrix, mean2 intelligently operates on the shortest dimension. 
### [min2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/min2.m)
finds the minimum of a vector, ignoring Infs and NaNs
### [modInv.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/modInv.m)
ModInv(x,n) computes the multiplicative inverse of x modulo n if one
### [modd.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/modd.m)
returns remainder if non zero. 
### [multiplot.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/multiplot.m)
mulitplot accepts 1 time axis and multiple data channels, and figures out what to do with them.
### [nonnans.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/nonnans.m)
removes NaNs from a vector
### [online.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/online.m)
checks to see if the computer is online
### [oss.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/oss.m)
OS-based slash
### [oval.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/oval.m)
oval is a better version of round, which rounds to how many ever
### [pdfrnd.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/pdfrnd.m)
pdfrnd(x, px, sampleSize): return a random sample of size sampleSize from 
### [powerspec.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/powerspec.m)
power spectral density of an input time series
### [raster2.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/raster2.m)
raster2(A,B)
### [rdir.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/rdir.m)
Recursive directory listing.
### [revCorrFilter.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/revCorrFilter.m)
extracts filter from input vector x and output vector y 
### [rsquare.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/rsquare.m)
computes the coefficent of determination (http://en.wikipedia.org/wiki/Coefficient_of_determination) between two inputs
### [searchpath.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/searchpath.m)
usage:
### [shadedErrorBar.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/shadedErrorBar.m)

### [spear.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/spear.m)
Spearman's rank correalation coefficient.
### [spellcheck.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/spellcheck.m)
small wrapper function to check spelling using aspell
### [spiketimes2f.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/spiketimes2f.m)
accepts a vector of spike times and returns a firing rate estimate using a Gaussian smoothing window. 
### [spinner.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/spinner.m)
simple, text-based spinner to indicate that some computation is being done
### [splinehist.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/splinehist.m)
uses smoothing splines to make nice-looking histograms 
### [strkat.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/strkat.m)
created by strkat@srinivas.gs on the 7th of June 2013
### [struct2mat.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/struct2mat.m)
usage: p =  struct2mat(p)
### [summarise.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/summarise.m)
reads m files and makes a text file containing the file name and the second line of each m file. 
### [sweetspot.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/sweetspot.m)
makes a colour map that goes from blue (too low) through green (nice) to red (too high)
### [textbar.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/textbar.m)
usage: insert textbar(i,imax) in the first line of your for loop
### [totient.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/totient.m)
calculates the totient function  of any positive integer n.
### [triangle.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/triangle.m)
triangle.m draws a equliateral triangle at a given point and orientation,
### [uid.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/uid.m)
make a Unique ID every time this is run
### [width.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/width.m)
width is like the built in "length"
### [xcoeff.m](https://github.com/sg-s/srinivas.gs_mtools/blob/master/xcoeff.m)
computes the cross-correlation coefficient between two signals


## General Notes on Usage

All functions here have help above the function definition, and you can get help about any file using `help`:

```
>> help Manipulate
```

shows:

```
Manipulate.m
  Mathematica-stype model manipulation
  usage: 
  Manipulate(fname,p,stimulus,response,time)
  where p is a structure containing the parameters of the model you want to manipulate 
  The function to be manipulated (fname) should conform to the following standard: should accept two inputs, time and stimulus, and a third input which is a structure specifying parameters (p)
  x is the stimulus input
 
 and response is an optional reference output that will be plotted with the model output (useful if you want to manually tune some parameters to fit data)
time is an optional time vector
  
Minimal Usage: 
  Manipulate(fname,p,stimulus);
  
  
created by Srinivas Gorur-Shandilya at 10:20 , 09 April 2014. Contact me at http://srinivas.gs/contact/
  
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
  
```

You can also call any function with no arguments and it will return help, if at least one argument is required for that function. So `Manipulate` is the same as `help Manipulate`

I've tried to follow the style guidelines specified in `mfile style guideline.md`

# Installation

You can install all these functions from within MATLAB using my package manager:

```
>> urlwrite('http://srinivas.gs/install.m','install.m');
>> install srinivas.gs_mtools
```

or you can install using `git`

```
$ git clone https://github.com/sg-s/srinivas.gs_mtools.git
```



# Detailed Notes	

## MakePDF.m and CleanPublish.m
`MakePDF.m` is a wrapper for MATLAB's [publish](http://www.mathworks.com/help/matlab/ref/publish.html) function that accepts a script, and makes into a PDF directly. It works by first using `publish` to make a .tex file, then using `pdflatex` to compile that to a PDF. Assumes you are working on a Unix machine with `pdflatex` installed. 

It uses `CleanPublish.m` to remove all the figures and log files after the PDF is compiled. 
	
## textbar.m

`textbar` is a text-based `waitbar` replacement. Drop it into long loops:

```
for i = 1:34
	textbar(i,34)
	% do some long computation
end
```

will show you a progress bar and how many loops have evaluated. For loops that run more than a hundred times, textbar intellgitently switches to percent completed. The progress bar is erased when the loop completes. 


## Manipulate.m

`Manipulate` offers Mathematica-style function and model manipulation in MATLAB. Manipulate can handle any function or model that is defined the following way:

```
function [x1,x2,...] = function_name(time,stimulus,p)
```
where `time` and `stimulus` are vectors of equal length and `p` is a structure that contains the parameters you want to manipulate. 

If your function/model isn't in this form, write a wrapper that is in this form and use 

```
>> Manipulate('function_name',p,stimulus)
```

## oval.m

`oval` is a version of `round` that is meant for use in figure labels, etc. `oval` returns a rounded string to an arbitrary number of digits:

```
>> oval(pi,2)

3.14

```

`oval` can also handle fractions, if you tell it to:

```
>> oval(1/7,'frac')

1/7
```