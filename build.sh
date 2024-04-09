#! /bin/bash

CONDA_BUILD_CMD="conda build --no-anaconda-upload"
# Speedup version with boa (conda install -n base boa)
#CONDA_BUILD_CMD="conda mambabuild --no-anaconda-upload"

echo -e "### Building Getopt::Euclid... \n"
$CONDA_BUILD_CMD perl-getopt-euclid

code=$?
if [ $code = 0 ]; then
    echo "SUCCESS : Building Getopt::Euclid DONE."
else
    echo "FAIL : Building Getopt::Euclid FAILED."
    exit $code
fi

echo -e "### Building Test::Number::Delta... \n"
$CONDA_BUILD_CMD perl-test-number-delta

code=$?
if [ $code = 0 ]; then
    echo "SUCCESS : Building Test::Number::Delta DONE."
else
    echo "FAIL : Building Test::Number::Delta FAILED."
    exit $code
fi

echo -e "### Building Math::Random::MT... \n"
$CONDA_BUILD_CMD perl-math-random-mt

code=$?
if [ $code = 0 ]; then
    echo "SUCCESS : Building Math::Random::MT DONE."
else
    echo "FAIL : Building Math::Random::MT FAILED."
    exit $code
fi

echo -e "### Building BioGrinder... \n"
$CONDA_BUILD_CMD biogrinder

code=$?
if [ $code = 0 ]; then
    echo "SUCCESS : Building BioGrinder DONE."
else
    echo "FAIL : Building BioGrinder FAILED."
    exit $code
fi

echo -e "### Building IntronSeeker... \n"
$CONDA_BUILD_CMD intronseeker

code=$?
if [ $code = 0 ]; then
    echo "SUCCESS : Building IntronSeeker DONE."
else
    echo "FAIL : Building IntronSeeker FAILED."
    exit $code
fi