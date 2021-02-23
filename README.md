# SubWoofer Calculator App

iOS app that provides 4 different calculators to aid in the creation of subwoofer boxes. <br />

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

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Port&space;Length&space;=&space;\frac{Area(1.84*10^8)}{1728(BoxVolume))(\frac{Frequency}{0.159})^2}-0.823\sqrt{Area}" title="\color{cyan}Port Length = \frac{Area(1.84*10^8)}{1728(BoxVolume))(\frac{Frequency}{0.159})^2}-0.823\sqrt{Area}" />
</p>
<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}A&space;(Round)=&space;\pi(\frac{Diameter}{2})^2" title="\color{cyan}A (Round)= \pi(\frac{Diameter}{2})^2" />
</p>
<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}A&space;(Slot)=&space;PortWidth&space;*&space;PortHeight" title="\color{cyan}A (Slot)= PortWidth * PortHeight" />
</p>
<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}V&space;=&space;BoxVolume" title="\color{cyan}V = BoxVolume" />
</p>
<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}F&space;=&space;Frequency" title="\color{cyan}F = Frequency" />
</p>

#### Calculating Volume of A Rectangular Prism

<p align="center">
  <img src="https://latex.codecogs.com/svg.latex?\color{cyan}Volume(ft.^3)&space;=&space;\frac{(Width-(2*Thickness))*(Height-(2*Thickness))*(Depth-(2*Thickness))}{1728}" title="\color{cyan}Volume(ft.^3) = \frac{(Width-(2*Thickness))*(Height-(2*Thickness))*(Depth-(2*Thickness))}{1728}" />
</p>

#### Calculating Volume of A Right-Angle Trapezoidal Prism

