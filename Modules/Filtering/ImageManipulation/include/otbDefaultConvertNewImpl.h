/*=========================================================================
 *
 *  Copyright Insight Software Consortium
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0.txt
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *=========================================================================*/
#ifndef otbDefaultConvertNewImp_h
#define otbDefaultConvertNewImp_h

#include "itkDefaultConvertPixelTraits.h"

namespace otb 
{
template < typename PixelType>
class DefaultConvertPixelTraitsTest : public itk::DefaultConvertPixelTraits < PixelType >
{

};

template < typename T >
class DefaultConvertPixelTraitsTest < std::complex < T > > : public itk::DefaultConvertPixelTraits < std::complex < T > >
{
public:
  typedef itk::DefaultConvertPixelTraits < std::complex < T > > SuperClass;
  static typename SuperClass::TargetType GetNthComponent ( int , const typename SuperClass::TargetType & pixel )
    {
    return pixel;
    }
};
} // end namespace
#endif
