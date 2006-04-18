/*=========================================================================

  Programme :   OTB (ORFEO ToolBox)
  Auteurs   :   CNES - J. Inglada
  Language  :   C++
  Date      :   14 March 2005
  Version   :   
  Role      :   
  $Id$

=========================================================================*/
#include <stdlib.h>
#include "itkExceptionObject.h"

#include "otbImageFileReader.h"

  // Software Guide : BeginLatex
  //
  // \textbf{FIXME !! This example segfaults (see bug no. 27)}.
  // This example shows the use of the \doxygen{otb::ImageViewer}
  // class for greylevel image visualization. As usual, we start by
  // including the header file for the class.
  //
  // Software Guide : EndLatex

// Software Guide : BeginCodeSnippet
#include "otbImageViewer.h"
// Software Guide : EndCodeSnippet

int main( int argc, char ** argv )
{



  if( argc != 2)
    {
    std::cout <<" Usage : InputImage"<<std::endl;
    }
        
    
  const char * inputFilename  = argv[1];

  // Software Guide : BeginLatex
  //
  // We will build a very simple pipeline where a reader gets an image
  // from a file and gives it to the viewer. We define the types for
  // the pixel, the image and the reader. The viewer clas is templated
  // over the pixel type \textbf{Fixme for bugs 26 and 28}.
  //
  // Software Guide : EndLatex

  // Siftware Guide : BeginCodeSnippet
  typedef itk::Image< unsigned char, 2 > ImageType;
  typedef otb::ImageFileReader< ImageType > ReaderType;    
  typedef otb::ImageViewer< ImageType::PixelType>    ViewerType;
  // Software Guide : EndCodeSnippet

  // Software Guide : BeginLatex
  //
  // We create the objects.
  //
  // Software Guide : EndLatex

  // Software Guide : BeginCodeSnippet
  ViewerType::Pointer  lViewer = ViewerType::New();
  ReaderType::Pointer       lReader = ReaderType::New();
  lReader->SetFileName(inputFilename);
  lReader->Update();
  // Software Guide : EndCodeSnippet

  // Software Guide : BeginLatex
  //
  // We can choose a label for the windows created by the viewer.
  //
  // Software Guide : EndLatex

  // Software Guide : BeginCodeSnippet    
  lViewer->SetLabel( "My Image" );
  // Software Guide : EndCodeSnippet

  // Software Guide : BeginLatex
  //
  // We can now plug the pipeline and trigger the visualization by
  // using the \code{Show} method.
  //
  // Software Guide : EndLatex

  // Software Guide : BeginCodeSnippet    

  lViewer->SetImage( lReader->GetOutput() );  

  lViewer->Show();

  // Software Guide : EndCodeSnippet

  // Software Guide : BeginLatex
  //
  // The last step consists in starting the GUI event loop by calling
  // the appropiate FLTK method.
  //
  // Software Guide : EndLatex

  // Software Guide : BeginCodeSnippet    

  Fl::run();

  // Software Guide : EndCodeSnippet
  // Software Guide : BeginLatex
  //
  // \begin{figure}
  // \center
  // \includegraphics[width=.8\textwidth]{VisuGrey.eps}
  // \itkcaption[Grey level image visualization.]{Example of grey
  // mevel image visualization.}
  // \label{fig:VisuGrey}
  // \end{figure}
  // The the \doxygen{otb::ImageViewer} class creates 3 windows (see
  // figure \ref{fig:VisuGrey}) for an improved visualization of large
  // images. This procedure is inspired from the navigation window of
  // the Gimp and other image visualization tools. The navigation
  // window is called here \emph{scroll} window and it shows the
  // complete image but subsampled to a lower resolution. The pricipal
  // window shows the region marked by a red rectangle in the scroll
  // window using the real resolution of the image. Finally, a zoom
  // window displays the region inside the red rectangle shown in the
  // principal window. A mouse click on a pixel of the scroll (respectively, the
  // pricipal window) updates the rectangle prosition and, therefore,
  // the region viewed in the principal (respectively, the zoom)
  // window. The zoom rate can be modified by using the + and - keys.
  //
  // Software Guide : EndLatex

    


  return EXIT_SUCCESS;
}


