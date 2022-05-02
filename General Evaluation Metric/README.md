# General Evaluation Metric
**Quantitative evaluation metrics for image fusion.**

源代码位于 '**. /Evaluation**' ；源图像请放在 '**./Image/Source-Image**'目录下； 融合结果请放在'**./Image/Algorithm**'目录下。
## Evaluation for single image

     1. 修改Evaluation_for_single_image.m 文件中源图像和融合结果的路径
     2. 运行Evaluation_for_single_image.m
 
## Evaluation for single algorithm
     1. 修改Evaluation_for_single_algorithm.m 文件中源图像和融合结果的路径
     2. 运行Evaluation_for_single_algorithm.m

## Evaluation for multi algorithm
     1. 修改Evaluation_for_multi_algorithm.m 文件中源图像和融合结果的路径
     2. 运行Evaluation_for_multi_algorithm.m
## Tips
如果具有一定Matlab编程基础的用户可以直接尝试运行Evaluation_for_single_algorithm.m或者Evaluation_for_multi_algorithm.m来评估一个或多个算法的性能，如果对Matlab不熟练的话，请先从单幅图像评估开始。

**对于图像融合领域的论文整理已开源至：https://github.com/Linfeng-Tang/Image-Fusion**

## Citation
如果我们的程序对你有所帮助请引用以下论文：

```
@article{TANG2022SeAFusion,
title = {Image fusion in the loop of high-level vision tasks: A semantic-aware real-time infrared and visible image fusion network},
author = {Linfeng Tang and Jiteng Yuan and Jiayi Ma},
journal = {Information Fusion},
volume = {82},
pages = {28-42},
year = {2022},
issn = {1566-2535},
publisher={Elsevier}
}
```

```
@article{Tang2022PIAFusion,
  title={PIAFusion: A progressive infrared and visible image fusion network based on illumination aware},
  author={Tang, Linfeng and Yuan, Jiteng and Zhang, Hao and Jiang, Xingyu and Ma, Jiayi},
  journal={Information Fusion},
  volume = {83-84},
  pages = {79-92},
  year = {2022},
  issn = {1566-2535},
  publisher={Elsevier}
}
```

```
@article{ma2021STDFusionNet,
  title={STDFusionNet: An Infrared and Visible Image Fusion Network Based on Salient Target Detection},
  author={Jiayi Ma, Linfeng Tang, Meilong Xu, Hao Zhang, and Guobao Xiao},
  journal={IEEE Transactions on Instrumentation and Measurement},
  year={2021},
  volume={70},
  number={},
  pages={1-13},
  doi={10.1109/TIM.2021.3075747}，
  publisher={IEEE}
}
```
**如果有任何问题请联系：linfeng0419@gmail.com**
