/*
 * Copyright (C) 2005-2019 Centre National d'Etudes Spatiales (CNES)
 *
 * This file is part of Orfeo Toolbox
 *
 *     https://www.orfeo-toolbox.org/
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef otbRCC8EdgeIterator_hxx
#define otbRCC8EdgeIterator_hxx

#include "otbRCC8EdgeIterator.h"

namespace otb
{
/** Constructor */
template <class TGraph>
RCC8EdgeIterator<TGraph>
::RCC8EdgeIterator()
{
  m_Graph = GraphType::New();
  boost::tuples::tie(m_Iter, m_End) = edges(*m_Graph->GetGraph());
}
/**
 * Copy operator.
 */
template <class TGraph>
RCC8EdgeIterator<TGraph>
::RCC8EdgeIterator(const Self& iter)
{
  m_Iter = iter.m_Iter;
  m_Graph = iter.m_Graph;
  m_End = iter.m_End;
}
/**
 *Constructor with input graph
 */
template <class TGraph>
RCC8EdgeIterator<TGraph>
::RCC8EdgeIterator(TGraph * graph)
{
  m_Graph = graph;
  boost::tuples::tie(m_Iter, m_End) = edges(*m_Graph->GetGraph());
}
/**
 * Get the current edge value.
 * \return The value of the current edge pointed by the iterator.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::RCC8ValueType
RCC8EdgeIterator<TGraph>
::GetValue(void)
{
  return (*m_Graph->GetGraph())[*m_Iter]->GetValue();
}
/**
 * Return the source vertex of the current edge.
 * \return The source edge.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::VertexPointerType
RCC8EdgeIterator<TGraph>
::GetSourceVertex(void)
{
  return (*m_Graph->GetGraph())[source(*m_Iter, (*m_Graph->GetGraph()))];
}
/**
 * Return the target vertex of the current edge.
 * \return The target vertex.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::VertexPointerType
RCC8EdgeIterator<TGraph>
::GetTargetVertex(void)
{
  return (*m_Graph->GetGraph())[target(*m_Iter, (*m_Graph->GetGraph()))];
}
/**
 * Return the source vertex index of the current edge.
 * \return The source vertex index.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::VertexDescriptorType
RCC8EdgeIterator<TGraph>
::GetSourceIndex(void)
{
  IndexMapType index = get(boost::vertex_index, (*m_Graph->GetGraph()));
  return index[source(*m_Iter, (*m_Graph->GetGraph()))];
}
/**
 * Return the target vertex index of the current edge.
 * \return The target vertex index.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::VertexDescriptorType
RCC8EdgeIterator<TGraph>
::GetTargetIndex(void)
{
  IndexMapType index = get(boost::vertex_index, (*m_Graph->GetGraph()));
  return index[target(*m_Iter, (*m_Graph->GetGraph()))];
}
/**
 * Return true if the iterator is at the end.
 * \return True if the iterator is at the end.
 */
template <class TGraph>
bool
RCC8EdgeIterator<TGraph>
::IsAtEnd(void)
{
  return (m_Iter == m_End);
}
/**
 * Go to the beginning.
 */
template <class TGraph>
void
RCC8EdgeIterator<TGraph>
::GoToBegin(void)
{
  boost::tuples::tie(m_Iter, m_End) = edges(*m_Graph->GetGraph());
}
/**
 * Increment.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::Self&
RCC8EdgeIterator<TGraph>
::operator++ ()
  {
  ++m_Iter;
  return *this;
  }
/**
 * Decrement.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::Self&
RCC8EdgeIterator<TGraph>
::operator-- ()
  {
  --m_Iter;
  return *this;
  }
/**
 * Add
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::Self&
RCC8EdgeIterator<TGraph>
::operator + (int i)
  {
  m_Iter = m_Iter + i;
  return *this;
  }
/**
 * Remove
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::Self&
RCC8EdgeIterator<TGraph>
::operator - (int i)
  {
  m_Iter = m_Iter - i;
  return *this;
  }
/**
 * Difference comparison operator.
 */
template <class TGraph>
bool
RCC8EdgeIterator<TGraph>
::operator != (const Self &iter)
  {
  return (m_Iter != iter.m_Iter);
  }
/**
 * Equality comparison operator.
 */
template <class TGraph>
bool
RCC8EdgeIterator<TGraph>
::operator == (const Self &iter)
  {
  return (m_Iter == iter.m_Iter);
  }
/**
 * Instantiation operator.
 */
template <class TGraph>
typename RCC8EdgeIterator<TGraph>
::Self&
RCC8EdgeIterator<TGraph>
::operator = (const Self &iter)
  {
  m_Iter = iter.m_Iter;
  return *this;
  }
} // End namespace otb
#endif
