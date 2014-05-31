#include <opencv2/opencv.hpp>

int main( int argc, const char** argv )
{
    cvNamedWindow("Video",0);
    
    CvCapture* capture = cvCaptureFromCAM(0);
    
    for(;;) {
        IplImage* img = cvQueryFrame(capture);
        cvShowImage("Video", img);
    }
}
