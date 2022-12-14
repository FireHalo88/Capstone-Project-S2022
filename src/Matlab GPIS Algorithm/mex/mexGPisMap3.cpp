/*
 * GPisMap - Online Continuous Mapping using Gaussian Process Implicit Surfaces
 * https://github.com/leebhoram/GPisMap
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License v3 as published by
 * the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of any FITNESS FOR A
 * PARTICULAR PURPOSE. See the GNU General Public License v3 for more details.
 *
 * You should have received a copy of the GNU General Public License v3
 * along with this program; if not, you can access it online at
 * http://www.gnu.org/licenses/gpl-3.0.html.
 *
 * Authors: Bhoram Lee <bhoram.lee@gmail.com>
 *          Huang Zonghao<ac@hzh.io>
 */

#include "mex.h"
#include <vector>
#include <memory>
#include <iostream>
#include <chrono>
#include "GPisMap3.h"

static GPisMap3* gpm = 0;
//Bottle camera parameters
// static const double bigbirdCams_fx[5] = {695.995, 695.995, 695.995 , 695.995, 695.995};
// static const double bigbirdCams_fy[5] = {695.995, 695.995, 695.995 , 695.995, 695.995};
// static const double bigbirdCams_cx[5] = {640, 640, 640, 640, 640};
// static const double bigbirdCams_cy[5] = {360, 360, 360, 360, 360};
// // static const double bigbirdCams_fx[5] = {697.995, 698.995, 698.495 , 698.495, 698.245};
// // static const double bigbirdCams_fy[5] = {697.995, 698.995, 698.495 , 698.495, 698.245};
// // static const double bigbirdCams_cx[5] = {637.479, 636.719, 639.099, 638.809, 639.239};
// // static const double bigbirdCams_cy[5] = {358.25, 357.875, 360.055, 359.869, 360.107};
// static const int bigbirdCams_width = 1280;
// static const int bigbirdCams_height = 720;

// static const double bigbirdCams_fx[5] = {695.995, 695.995, 695.995, 695.995, 695.995};
// static const double bigbirdCams_fy[5] = {695.995, 695.995, 695.995, 695.995, 695.995};
// static const double bigbirdCams_cx[5] = {640, 640, 640, 640, 640};
// static const double bigbirdCams_cy[5] = {360, 360, 360, 360, 360};
// static const int bigbirdCams_width = 1280;
// static const int bigbirdCams_height = 720;

//Listerine IRL Depiction
static const double bigbirdCams_fx[5] = {426.099884, 426.099884, 426.099884, 426.099884, 426.099884};
static const double bigbirdCams_fy[5] = {426.099884, 426.099884, 426.099884, 426.099884, 426.099884};
static const double bigbirdCams_cx[5] = {429.315277, 429.315277, 429.315277, 429.315277, 429.315277};
static const double bigbirdCams_cy[5] = {242.287597, 242.287597, 242.287597, 242.287597, 242.287597};
static const int bigbirdCams_width = 848;
static const int bigbirdCams_height = 480;

// static const double bigbirdCams_fx[5] = {570.9361, 572.3318, 568.9403 , 567.9881, 572.7638};
// static const double bigbirdCams_fy[5] = {570.9376, 572.3316, 568.9419 , 567.9995, 572.7567};
// static const double bigbirdCams_cx[5] = {306.8789, 309.9968, 308.4583, 310.5243, 310.4192};
// static const double bigbirdCams_cy[5] = {238.8476, 230.6296, 225.8232, 223.9443, 214.8762};
// static const int bigbirdCams_width = 640;
// static const int bigbirdCams_height = 480;

// static const double bigbirdCams_fx[5] = {453.19871, 453.19871, 453.19871, 453.19871, 453.19871};
// static const double bigbirdCams_fy[5] = {452.73594, 452.73594, 452.73594, 452.73594, 452.73594};
// static const double bigbirdCams_cx[5] = {331.13429, 331.13429, 331.13429, 331.13429, 331.13429};
// static const double bigbirdCams_cy[5] = {238.60440, 238.60440, 238.60440, 238.60440, 238.60440};
// static const int bigbirdCams_width = 640;
// static const int bigbirdCams_height = 480;

//Bottle camera parameters
// static const double bigbirdCams_fx[5] = {697.995, 698.995, 698.495 , 698.495, 698.245};
// static const double bigbirdCams_fy[5] = {697.995, 698.995, 698.495 , 698.495, 698.245};
// static const double bigbirdCams_cx[5] = {520.461, 519.533, 521.533, 521.665, 522.179};
// static const double bigbirdCams_cy[5] = {361.865, 363.488, 363.488, 363.488, 363.723};
// static const int bigbirdCams_width = 1280;
// static const int bigbirdCams_height = 720;

static const double YCBCams_fx[5] = {570.2590, 571.8461, 568.4464 , 566.9790, 574.0641};
static const double YCBCams_fy[5] = {570.2636, 571.8428, 568.4494 , 566.9812, 574.0598};
static const double YCBCams_cx[5] = {313.7235, 314.9134, 310.3805, 314.3801, 314.6690};
static const double YCBCams_cy[5] = {236.0783, 229.4538, 224.6232, 223.9443, 220.7985};
static const int YCBCams_width = 640;
static const int YCBCams_height = 480;

void mexFunction (int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[]) {

    char command[128];
    mxGetString(prhs[0],command,128);
    std::string commstr(command);
    
    if (commstr.compare("update")==0) {
        std::cout << " " << std::endl;
        std::cout << "UPDATE" << std::endl;
        if (gpm == 0){
            gpm = new GPisMap3();
        }
        mwSize numDim = mxGetNumberOfDimensions(prhs[1]);
        std::cout << "Update numDim: " << numDim << std::endl;
        const mwSize *dims = mxGetDimensions(prhs[1]);
        std::cout << "Update dims: " << dims << std::endl;

        if ( numDim == 2 && (nrhs == 3))
        {
            if (mxSINGLE_CLASS != mxGetClassID(prhs[1]) ||
                mxSINGLE_CLASS != mxGetClassID(prhs[2]) ){
                std::cout << "The input data must be float (single) type.  @ train()" << std::endl;
                return;
            }

            float * pz = (float *)mxGetData(prhs[1]);
            float * ppose = (float *)mxGetData(prhs[2]);

            std::vector<float> pose(ppose, ppose + mxGetNumberOfElements(prhs[2]) );

            int numel =  mxGetNumberOfElements(prhs[1]);
            gpm->update(pz, numel, pose);


        }
        else
            std::cout << "Error: Check the input dimension." << std::endl;
        return;
    }
    else if (commstr.compare("test")==0) {
        std::cout << " " << std::endl;
        std::cout << "TESTING" << std::endl;
        const mwSize *dims = mxGetDimensions(prhs[1]);
        int dim = dims[0];
        int N = dims[1];
        std::cout << "*dims: " << *dims << std::endl;
        std::cout << "dim: " << dim << std::endl;
        std::cout << "N: " << N << std::endl;
        if (dim !=3)
            return;

            if (mxSINGLE_CLASS != mxGetClassID(prhs[1])){
                std::cout << "The input data must be float (single) type. @ test()" << std::endl;
                return;
            }

        if ((gpm != 0) && (N > 0)){
            float* px = (float *)mxGetData(prhs[1]);

            if (sizeof(float) == sizeof(double)){
                plhs[0] = mxCreateDoubleMatrix(2*(1+dim),N,mxREAL);   // f-value[0],  grad-value[1,2], variances[3-5]
                std::cout << "1plhs[0]: " << plhs[0] << std::endl;
            }
            else if (sizeof(float) == sizeof(float)){
                plhs[0] = mxCreateNumericMatrix(2*(1+dim),N,mxSINGLE_CLASS, mxREAL);
                std::cout << "2plhs[0]: " << plhs[0] << std::endl;
            }

            float *pRes   = (float*)mxGetPr(plhs[0]);
            gpm->test(px, dim, N, pRes);
            std::cout << "pRes: " << pRes << std::endl;
        }
        else if (gpm ==0){
            std::cout << "Error: the map is not initialized." << std::endl;
        }

    }   
    else if (commstr.compare("setCamera")==0) 
    {
        std::cout << " " << std::endl;
        std::cout << "setCamera" << std::endl;
        double *camID = (double *)mxGetData(prhs[1]);
        int n = (int)(*camID)-1;
        std::cout << "camID: " << camID <<  " n: " << n << std::endl;        
        char cam_name[12];
        mxGetString(prhs[2],cam_name,12);
        std::string camnamestr(cam_name);
        if (gpm != 0){
            if (n>=0 && n<5){
                if (camnamestr.compare("bigbird")==0){
                    camParam c(bigbirdCams_fx[n],bigbirdCams_fy[n],bigbirdCams_cx[n],bigbirdCams_cy[n], bigbirdCams_width, bigbirdCams_height);
                    std::cout << "1fx: " << bigbirdCams_fx[n] << " fy: " << bigbirdCams_fy[n] << " cx: " << bigbirdCams_cx[n] << " cy: " << bigbirdCams_cy[n]
                        << " Width: " << bigbirdCams_width << " Height: " << bigbirdCams_height << std::endl;
                    gpm->resetCam(c);
                }
                else if (camnamestr.compare("ycb")==0){
                    camParam c(YCBCams_fx[n],YCBCams_fy[n],YCBCams_cx[n],YCBCams_cy[n],YCBCams_width,YCBCams_height);
                    gpm->resetCam(c);
                }
            }
        }
        else
        {
            GPisMap3Param p;
            if (camnamestr.compare("bigbird")==0){
                camParam c(bigbirdCams_fx[n],bigbirdCams_fy[n],bigbirdCams_cx[n],bigbirdCams_cy[n], bigbirdCams_width, bigbirdCams_height);
                std::cout << "2fx: " << bigbirdCams_fx[n] << " fy: " << bigbirdCams_fy[n] << " cx: " << bigbirdCams_cx[n] << " cy: " << bigbirdCams_cy[n]
                << " Width: " << bigbirdCams_width << " Height: " << bigbirdCams_height << std::endl;
                gpm = new GPisMap3(p,c);
            }
            else if (camnamestr.compare("ycb")==0){
                camParam c(YCBCams_fx[n],YCBCams_fy[n],YCBCams_cx[n],YCBCams_cy[n],YCBCams_width,YCBCams_height);
                gpm = new GPisMap3(p,c);
            }
        }
        std::cout << "setCamera Complete" << std::endl;
        return;
    }   
    else if (commstr.compare("getAllPoints")==0){
        if (gpm != 0){
            std::vector<float> pos;
            gpm->getAllPoints(pos);

            int N = pos.size()/3; // 2D
            if (N > 0){
                plhs[0] = mxCreateNumericMatrix(3,N,mxSINGLE_CLASS, mxREAL);
                float *pRes   = (float*)mxGetPr(plhs[0]);
                memcpy(pRes,pos.data(),sizeof(float)*3*N);
            }
        }
    }
    else if (commstr.compare("reset")==0) {
        if (gpm != 0){
            gpm->reset();
            delete gpm;
            gpm = 0;
            std::cout << "Map cleared\n" << std::endl;
        }
        return;
    }

    return;
}
