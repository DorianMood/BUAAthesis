---
marp: true
theme: default
paginate: true
---

<style>
div.twocols {
  margin-top: 35px;
  column-count: 2;
}
div.twocols p:first-child,
div.twocols h1:first-child,
div.twocols h2:first-child,
div.twocols ul:first-child,
div.twocols ul li:first-child,
div.twocols ul li p:first-child {
  margin-top: 0 !important;
}
div.twocols p.break {
  break-before: column;
  margin-top: 0;
}
section {
    padding: 100px;
}
footer {
    background-color: #254aa5;
    bottom: 30px;
    position: absolute;
}
</style>

# Introduction

Image compression is an important task in computer science and engineering.

Two main approaches:
1. Lossy (estimating information). JPEG, MP4, MP3 etc.
2. Lossless (compressing information). DEFLATE, HEVC, H.256 etc.

Discrete cosine transform (DCT), Huffman coding.

---

# Image compression

<div class="twocols">

![](figure/2d-dct.png)

<p class="break"></p>

It is common to use DCT based methods in image compression. A popular implementation of Fourier transform for discrete functions is Discrete Cosine Transform.

However this is not the only one approach. Instead of using a predefined polynomial to encode an image, it is possible to use neural networks to pack and unpack information.

</div>

---

# Neural networks in compression

There were several approaches to apply neural networks architecture in image compression. Take an autoencoder architecture as an example:

![](figure/neural-compression.png)

---

# Objective

<div class="twocols">

![**Image and scene graph associated with it**](./figure/image-and-scene-graph.png)

<p class="break"></p>

How do we memorize image or visual scene in our life. We do not operate in terms of pixels or object coordinates. More likely we use something like scheme, which describes the most important parts of an image.

There are already algorithms capable to extract Scene Graphs form image. There are some approaches to generate an image from scene graphs. We can combine those two.

</div>

---

# Niches

Potential application niches:

1. Limited space on machine with high computational power.
2. Huge images needed to be transmitted through a network with limited speed.

TODO : verbally describe limitations

---

# Methodology

A general approach is to use two models: one model will be used to generate intermediate representation, another one will be used to restore an original image from its representation.

---

# Image scene graph

<div class="twocols">

![**Image and its scene graph**](./figure/image-and-scene-graph.png)

<p class="break">

On the left we can see an image scene graph.

</div>

---

# General pipeline

First scene graph and convolution features are obtained. Then this can be treated as a compressed representation of initial image. It can be sent through network or being stored on machine. When the original image is needed we can feed this representation to generative model to obtain initial image.

![](./figure/application-general-pipeline.png)

---

# Scene graph example

**Scene graph generation general view.** The left part is original image, the middle part is image with detected objects and the right part is scene graph that can be obtained from such image.

![](./figure/scene-graph-example.png)

---

# Scene graph generation

![h:550px](./figure/sgg-pipeline.png)

---

# Image generation pipeline

General pipeline to generate an image from an arbitrary scene graph.

![](./figure/image-generation-from-sg.png)

---

# Data

Visual Genome dataset consists of more than 100,000 images labeled with scene graphs.

Dataset structure:

1. Images.
2. Detected objects information (coordinates of rectangles for each object, objects labels, objects attributes).
3. Scene graphs, obtained from images.

Images are in JPEG format with various height and width.

---

# Future planing

After the primary research it is clear that the model is not as easy as it thought to be before.

TODO : make it more like schedule (4 quarters)

Future plans include:
 - Setting up a model
 - Training the model in a lab
 - Making publications
 - Summarizing a research result in final thesis

---

# Conclusion
