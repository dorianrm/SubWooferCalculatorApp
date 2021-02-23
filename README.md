# SubWoofer Calculator App

iOS app that provides 4 different calculators to aid in the creation of subwoofer boxes. <br />

<p align="center">
  <img src="subwooferApp.gif" width="200" class="center" />
</p>

### Included Calculators

- Round Port Length
- Slot Port Length
- Rectangular Prism Volume
- Right-Angle Trapezoidal Prism Volume (Wedge)

## Background

Subwoofers are loudspeakers designed to produce low bass frequencies. In order to optimize both the sound quality and specific output frequencies of bass, boxes are designed to encase subwoofers in order to achieve these goals. The calculators included in this app aid in this construction process.

<p align="center">
  <img src="example_box.png" width="200" class="center" />
</p>

Subwoofers generate frequencies through the oscilating movement of its cone. In doing so, varying pressures are generated on the front and back of the cone. Although they are the same sounds, their relative wavelengths are offset. Therefore if they are heard together, their wavelengths cancel eachother out resulting in no sound heard. It is for this reason where subwoofer boxes come in.

Grossly simplying, the relative volume of a box and size of an included round or slot port affects the range of frequencies that can escape the box. Therefore controlling these dimensions, the box will output deisred frequencies much more clearly compared to other undesired ranges. Overall, different designs of boxes result in different listening experiences. 

## The Math Behind the Calculators

#### Calculating Port Length

- Area = Cross Sectional area of port (Circle vs. Rectangle)

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Port&space;Length(in.)&space;=&space;\frac{Area(1.84*10^8)}{1728(BoxVolume))(\frac{Frequency}{0.159})^2}-0.823\sqrt{Area}" title="\color{cyan}Port Length(in.) = \frac{Area(1.84*10^8)}{1728(BoxVolume))(\frac{Frequency}{0.159})^2}-0.823\sqrt{Area}" />
</p>
<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}A&space;(Round)=&space;\pi(\frac{Diameter}{2})^2" title="\color{cyan}A (Round)= \pi(\frac{Diameter}{2})^2" />
</p>
<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}A&space;(Slot)=&space;PortWidth&space;*&space;PortHeight" title="\color{cyan}A (Slot)= PortWidth * PortHeight" />
</p>

#### Calculating Volume of A Rectangular Prism

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Volume(ft.^3)&space;=&space;\frac{(Width-(2*Thickness))*(Height-(2*Thickness))*(Depth-(2*Thickness))}{1728}" title="\color{cyan}Volume(ft.^3) = \frac{(Width-(2*Thickness))*(Height-(2*Thickness))*(Depth-(2*Thickness))}{1728}" />
</p>

#### Calculating Volume of A Right-Angle Trapezoidal Prism

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Volume(Rect)&space;=&space;\frac{(Width-(2*Thickness))*(Height2-(2*Thickness))*(Depth-(2*Thickness))}{1728}" title="\color{cyan}Volume(Rect) = \frac{(Width-(2*Thickness))*(Height2-(2*Thickness))*(Depth-(2*Thickness))}{1728}" />
</p>

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Volume(Triangle)&space;=&space;(0.5*(Depth-(2*Thickness)*((Height1-(2*Thickness))-(Height2-(2*Thickness))))&space;*&space;(Width-(2*Thickness))" title="\color{cyan}Volume(Triangle) = (0.5*(Depth-(2*Thickness)*((Height1-(2*Thickness))-(Height2-(2*Thickness)))) * (Width-(2*Thickness))" />
</p>

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Volume(ft.^3)&space;=&space;\frac{V(Rect)&plus;V(Triangle)}{1728}" title="\color{cyan}Volume(ft.^3) = \frac{V(Rect)+V(Triangle)}{1728}" />
</p>
