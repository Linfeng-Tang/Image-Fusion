
# 图像融合(Image Fusion)
## News
[2022-07-29] 我们的综述论文《[基于深度学习的图像融合方法综述](http://www.cjig.cn/jig/ch/reader/view_abstract.aspx?file_no=20230102&flag=1)》被《中国图象图形学报》正式接收！[[论文下载](http://www.cjig.cn/jig/ch/reader/view_abstract.aspx?file_no=20230102&flag=1)]

- [Citation](#citation)
- [多模图像融合(Multi-Modal Image Fusion)](#多模图像融合multi-modal-image-fusion)
  - [红外和可见光图像融合(Infrared and visible image fusion)](#红外和可见光图像融合infrared-and-visible-image-fusion)
  - [医学图像融合(Medical image fusion)](#医学图像融合medical-image-fusion)
- [数字摄影图像融合(Digital Photography Image Fusion)](#数字摄影图像融合digital-photography-image-fusion)
  - [多曝光图像融合(Multi-exposure image fusion)](#多曝光图像融合multi-exposure-image-fusion)
  - [多聚焦图像融合(Multi-focus image fusion)](#多聚焦图像融合multi-focus-image-fusion)
- [遥感影像融合(Remote Sensing Image Fusion)](#遥感影像融合remote-sensing-image-fusion)
  - [全色图像锐化(Pansharpening)](#全色图像锐化pansharpening)
- [通用图像融合框架(General Image Fusion Framerwork)](#通用图像融合框架general-image-fusion-framerwork)
- [综述(Survey)](#综述survey)
- [数据集(Dataset)](#数据集dataset)
- [评估指标(Evaluation Metric)](#评估指标evaluation-metric)
  - [通用评估指标(General evaluation metric)](#通用评估指标general-evaluation-metric)
  - [遥感影像融合评估指标](#遥感影像融合评估指标)
## Citation
如果我们的总结对你有所帮助, 请引用以下论文：

```
@article{Tang2022Survey,
  title={Deep learning-based image fusion: A survey},
  author={Tang, Linfeng and Zhang, Hao and Xu, Han and Ma, Jiayi},  
  journal={Journal of Image and Graphics}
  volume={28},
  number={1},
  pages={3--36},
  year={2023}
}
```

```
@article{Tang2022SuperFusion,
  title={SuperFusion: A versatile image registration and fusion network with semantic awareness},
  author={Tang, Linfeng and Deng, Yuxin and Ma, Yong and Huang, Jun and Ma, Jiayi},
  journal={IEEE/CAA Journal of Automatica Sinica},
  volume={9},
  number={12},
  pages={2121--2137},
  year={2022},
  publisher={IEEE}
}
```
```
@article{Ma2022SwinFusion,
  title={SwinFusion: Cross-domain Long-range Learning for General Image Fusion via Swin Transformer},
  author={Ma, Jiayi and Tang, Linfeng and Fan, Fan and Huang, Jun and Mei, Xiaoguang and Ma, Yong},
  journal={IEEE/CAA Journal of Automatica Sinica},
  volume={9},
  number={7},
  pages={1200--1217},
  year={2022},
  publisher={IEEE}
}
```

```
@article{TangSeAFusion,
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
@article{Tang2022DIVFusion,
  title={DIVFusion: Darkness-free infrared and visible image fusion},
  author={Tang, Linfeng and Xiang, Xinyu and Zhang, Hao and Gong, Meiqi and Ma, Jiayi},
  journal={Information Fusion},
  volume = {91},
  pages = {477-493},
  year = {2023},
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
@article{Ma2021STDFusionNet,
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

## 多模图像融合(Multi-Modal Image Fusion)
### 红外和可见光图像融合(Infrared and visible image fusion)
<table>
    <thead>
      <tr>
        <th>方法</th>
        <th>标题</th>
        <th>论文</th>
        <th>代码</th>
        <th>发表期刊或会议</th>
        <th>基础框架</th>
        <th>监督范式</th>
        <th>发表年份</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>DenseFuse</td>
        <td>DenseFuse: A Fusion Approach to Infrared and Visible Images</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8580578/">Paper</a></td>
        <td><a href="https://github.com/hli1221/imagefusion_densefuse">Code</a></td>
        <td>TIP</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>FusionGAN</td>
        <td>FusionGAN: A generative adversarial network for infrared and&nbsp;&nbsp;&nbsp;visible image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253518301143%3Fvia%253Dihub">Paper</a></td>
        <td><a href="https://github.com/jiayi-ma/FusionGAN">Code</a></td>
        <td>InfFus</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>DDcGAN</td>
        <td>Learning a Generative Model for Fusing Infrared and Visible&nbsp;&nbsp;&nbsp;Images via Conditional Generative Adversarial Network with Dual&nbsp;&nbsp;&nbsp;Discriminators</td>
        <td><a href="https://www.ijcai.org/proceedings/2019/0549.pdf">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/DDcGAN">Code</a></td>
        <td>IJCAI</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>NestFuse</td>
        <td>NestFuse: An Infrared and Visible Image Fusion Architecture&nbsp;&nbsp;&nbsp;Based on Nest Connection and Spatial/Channel Attention Models</td>
        <td><a href="https://ieeexplore.ieee.org/document/9127964/">Paper</a></td>
        <td><a href="https://github.com/hli1221/imagefusion-nestfuse">Code</a></td>
        <td>TIM</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>DDcGAN</td>
        <td>DDcGAN: A dual-discriminator conditional generative&nbsp;&nbsp;&nbsp;adversarial network for multi-resolution image fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9031751/">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/DDcGAN">Code</a></td>
        <td>TIP </td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>DIDFuse</td>
        <td>DIDFuse: Deep Image Decomposition for Infrared and Visible Image Fusion</td>
        <td><a href="https://arxiv.org/abs/2003.09210">Paper</a></td>
        <td><a href="https://github.com/Zhaozixiang1228/IVIF-DIDFuse">Code</a></td>
        <td>IJCAI </td>
        <td>AE</td>
        <td>自监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>RFN-Nest</td>
        <td>RFN-Nest: An end-to-end residual fusion network for infrared&nbsp;&nbsp;&nbsp;and visible images</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253521000440%3Fvia%253Dihub">Paper</a></td>
        <td><a href="https://github.com/hli1221/imagefusion-rfn-nest">Code</a></td>
        <td>InfFus</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>CSF</td>
        <td>Classification Saliency-Based Rule for Visible and Infrared&nbsp;&nbsp;&nbsp;Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9502544">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/CSF">Code</a></td>
        <td>TCI</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>DRF</td>
        <td>DRF: Disentangled Representation for Visible and Infrared&nbsp;&nbsp;&nbsp;Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9345717/">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/DRF">Code</a></td>
        <td>TIM</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>SEDRFuse</td>
        <td>SEDRFuse: A Symmetric Encoder–Decoder With Residual Block&nbsp;&nbsp;&nbsp;Network for Infrared and Visible Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9187663">Paper</a></td>
        <td><a href="https://github.com/jianlihua123/SEDRFuse">Code</a></td>
        <td>TIM</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>MFEIF</td>
        <td>Learning a Deep Multi-Scale Feature Ensemble and an&nbsp;&nbsp;&nbsp;Edge-Attention Guidance for Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9349250">Paper</a></td>
        <td></td>
        <td>TCSVT</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>Meta-Learning</td>
        <td>Different Input Resolutions and Arbitrary Output Resolution: A&nbsp;&nbsp;&nbsp;Meta Learning-Based Deep Framework for Infrared and Visible Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9394791/">Paper</a></td>
        <td></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>RXDNFuse</td>
        <td>RXDNFuse: A aggregated residual dense network for infrared and&nbsp;&nbsp;&nbsp;visible image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253520304152%3Fvia%253Dihub">Paper</a></td>
        <td><a href="https://github.com/JinyuanLiu-CV/MFEIF">Code</a></td>
        <td>InfFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>STDFusionNet</td>
        <td>STDFusionNet: An Infrared and Visible Image Fusion Network&nbsp;&nbsp;&nbsp;Based on Salient Target Detection</td>
        <td><a href="https://ieeexplore.ieee.org/document/9416507">Paper</a></td>
        <td><a href="https://github.com/Linfeng-Tang/STDFusionNet">Code</a></td>
        <td>TIM</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>D2LE</td>
        <td>A Bilevel Integrated Model With Data-Driven Layer Ensemble for&nbsp;&nbsp;&nbsp;Multi-Modality Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9293146">Paper</a></td>
        <td></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>HAF</td>
        <td>Searching a Hierarchically Aggregated Fusion Architecture for&nbsp;&nbsp;&nbsp;Fast Multi-Modality Image Fusion</td>
        <td><a href="https://dl.acm.org/doi/abs/10.1145/3474085.3475299%3Fcasa_token%3DtT48gSwVWjkAAAAA%3AQaDUAB7nLzWcByiAESzOTAgFjdh5kLxS8J612shuDn3RLLIOcU1AX7AhcvYT9UlGTub1mi85Tws">Paper</a></td>
        <td><a href="https://github.com/LiuzhuForFun/Hierarchical-NAS-Image-Fusion">Code</a></td>
        <td>ACM MM</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>SDDGAN</td>
        <td>Semantic-supervised Infrared and Visible Image Fusion via a&nbsp;&nbsp;&nbsp;Dual-discriminator Generative Adversarial Network</td>
        <td><a href="https://ieeexplore.ieee.org/document/9623476">Paper</a></td>
        <td><a href="https://github.com/WeiWu-WIT/SDDGAN">Code</a></td>
        <td>TMM</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>Detail-GAN</td>
        <td>Infrared and visible image fusion via detail preserving&nbsp;&nbsp;&nbsp;adversarial learning</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253519300314%3Fvia%253Dihub">Paper</a></td>
        <td><a href="https://github.com/jiayi-ma/ResNetFusion">Code</a></td>
        <td>InfFus</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>Perception-GAN</td>
        <td>Image fusion based on&nbsp;&nbsp;&nbsp;generative adversarial network consistent with perception</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253521000439%3Fcasa_token%3D-LrGkXT12IMAAAAA%3A35WH5dIx-2zWPZ3sTFL3cgjjCK_17nkc0xYVkDXL8Pp51k3DIPtaNT8NWvuKoXlIOoRkKi87AZo0">Paper</a></td>
        <td><a href="https://github.com/thfylsty/imagefusion_Perceptual_FusionGan">Code</a></td>
        <td>InfFus</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>GAN-FM</td>
        <td>GAN-FM: Infrared and Visible&nbsp;&nbsp;&nbsp;Image Fusion Using GAN With Full-Scale Skip Connection and Dual Markovian&nbsp;&nbsp;&nbsp;Discriminators</td>
        <td><a href="https://ieeexplore.ieee.org/document/9573457">Paper</a></td>
        <td><a href="https://github.com/yuanjiteng/GAN-FM">Code</a></td>
        <td>TCI</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>AttentionFGAN</td>
        <td>AttentionFGAN: Infrared and Visible Image Fusion Using&nbsp;&nbsp;&nbsp;Attention-Based Generative Adversarial Networks</td>
        <td><a href="https:////ieeexplore.ieee.org/document/9103116/">Paper</a></td>
        <td></td>
        <td>TMM</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>GANMcC</td>
        <td>GANMcC: A Generative&nbsp;&nbsp;&nbsp;Adversarial Network With Multiclassification Constraints for Infrared and&nbsp;&nbsp;&nbsp;Visible Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9274337">Paper</a></td>
        <td><a href="https://github.com/jiayi-ma/GANMcC">Code</a></td>
        <td>TIM</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>MgAN-Fuse</td>
        <td>Multigrained Attention Network for Infrared and Visible Image&nbsp;&nbsp;&nbsp;Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9216075">Paper</a></td>
        <td></td>
        <td>TIM</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>TC-GAN</td>
        <td>Infrared and Visible Image&nbsp;&nbsp;&nbsp;Fusion via Texture Conditional Generative Adversarial Network</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9335976">Paper</a></td>
        <td></td>
        <td>TCSVT</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>AUIF</td>
        <td>Efficient and model-based infrared and visible image fusion via algorithm unrolling</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9416456/">Paper</a></td>
        <td><a href="https://github.com/Zhaozixiang1228/IVIF-AUIF-Net">Code</a></td>
        <td>TCSVT</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>TarDAL</td>
        <td>Target-aware Dual Adversarial Learning and a Multi-scenario Multi-Modality Benchmark to Fuse Infrared and Visible for Object Detection</td>
        <td><a href="https://arxiv.org/abs/2203.16220v1">Paper</a></td>
        <td><a href="https://github.com/JinyuanLiu-CV/TarDAL">Code</a></td>
        <td>CVPR</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>RFNet</td>
        <td>RFNet: Unsupervised Network for Mutually Reinforcing Multi-modal Image Registration and Fusion</td>
        <td><a href="https://www.researchgate.net/publication/360238557_RFNet_Unsupervised_Network_for_Mutually_Reinforcing_Multi-modal_Image_Registration_and_Fusion">Paper</a></td>
        <td><a href="https://github.com/hanna-xu">Code</a></td>
        <td>CVPR</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>SeAFusion</td>
        <td>Image fusion in the loop of&nbsp;&nbsp;&nbsp;high-level vision tasks: A semantic-aware real-time infrared and visible&nbsp;&nbsp;&nbsp;image fusion network</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253521002542%3Fvia%253Dihub">Paper</a></td>
        <td><a href="https://github.com/Linfeng-Tang/SeAFusion">Code</a></td>
        <td>InfFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>PIAFusion</td>
        <td>PIAFusion: A progressive infrared and visible image fusion&nbsp;&nbsp;&nbsp;network based on illumination aware</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S156625352200032X">Paper</a></td>
        <td><a href="https://github.com/Linfeng-Tang/PIAFusion" target="_blank" rel="noopener noreferrer">Code</a></td>        
        <td>InfFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>      
      <tr>
        <td>UMF-CMGR</td>
        <td>Unsupervised Misaligned Infrared and Visible Image Fusion via Cross-Modality Image Generation and Registration</td>
        <td><a href="https://arxiv.org/pdf/2205.11876.pdf">Paper</a></td>
        <td><a href="https://github.com/wdhudiekou/UMF-CMGR" target="_blank" rel="noopener noreferrer">Code</a></td>        
        <td>IJCAI</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>DetFusion</td>
        <td>DetFusion: A Detection-driven Infrared and Visible Image Fusion Network</td>
        <td><a href="https://dl.acm.org/doi/abs/10.1145/3503161.3547902?casa_token=YmZKEkd1zVcAAAAA:wb0HbfopS60BwSh0_QAdHHjwNQ5ZoWxduwHfBd1NzLbMr32AOPcInC4TCbZ5KM9Ly1PbVIGkmg">Paper</a></td>
        <td><a href="https://github.com/SunYM2020/DetFusion" target="_blank" rel="noopener noreferrer">Code</a></td>        
        <td>ACM MM</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>DIVFusion</td>
        <td>DIVFusion: Darkness-free infrared and visible image fusion</td>
        <td><a href="https://authors.elsevier.com/c/1g4EB_ZdCkUn0I">Paper</a></td>
        <td><a href="https://github.com/Xinyu-Xiang/DIVFusion" target="_blank" rel="noopener noreferrer">Code</a></td>        
        <td>InfFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2023</td>
      </tr>
    </tbody>
    </table>
    

### 医学图像融合(Medical image fusion)
<table>
    <thead>
      <tr>
        <th>方法</th>
        <th>标题</th>
        <th>论文</th>
        <th>代码</th>
        <th>发表期刊或会议</th>
        <th>基础框架</th>
        <th>监督范式</th>
        <th>年份</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>CNN</td>
        <td>A medical image fusion method based on&nbsp;&nbsp;&nbsp;convolutional neural networks</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8009769/">Paper</a></td>
        <td></td>
        <td>ICIF</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2017</td>
      </tr>
      <tr>
        <td>Zero-LMF</td>
        <td>Zero-Learning Fast Medical Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9011178">Paper</a></td>
        <td><a href="https://github.com/PanPapag/Zero-Learning-Fast-Medical-Image-Fusion">Code</a></td>
        <td>ICIF</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>DDcGAN</td>
        <td>Learning a Generative Model for Fusing Infrared and Visible&nbsp;&nbsp;&nbsp;Images via Conditional Generative Adversarial Network with Dual&nbsp;&nbsp;&nbsp;Discriminators</td>
        <td><a href="https://www.ijcai.org/proceedings/2019/0549.pdf">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/DDcGAN">Code</a></td>
        <td>IJCAI</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>GFPPC-GAN</td>
        <td>Green Fluorescent Protein and Phase-Contrast&nbsp;&nbsp;&nbsp;Image Fusion via Generative Adversarial Networks</td>
        <td><a href="https://www.hindawi.com/journals/cmmm/2019/5450373/">Paper</a></td>
        <td></td>
        <td>CMMM</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>CCN-CP</td>
        <td>Multi-modality medical image fusion using convolutional neural&nbsp;&nbsp;&nbsp;network and contrast pyramid</td>
        <td><a href="https://www.mdpi.com/1424-8220/20/8/2169">Paper</a></td>
        <td></td>
        <td>Sensors</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>DDcGAN</td>
        <td>DDcGAN: A Dual-Discriminator Conditional&nbsp;&nbsp;&nbsp;Generative Adversarial Network for Multi-Resolution Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9502544/">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/DDcGAN">Code</a></td>
        <td>TIP </td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>MGMDcGAN</td>
        <td>Medical Image Fusion Using Multi-Generator&nbsp;&nbsp;&nbsp;Multi-Discriminator Conditional Generative Adversarial Network</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9042283/">Paper</a></td>
        <td><a href="https://github.com/HaoZhang1018/MGMDcGAN">Code</a></td>
        <td>Access </td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>D2LE</td>
        <td>A Bilevel Integrated Model With Data-Driven Layer Ensemble for&nbsp;&nbsp;&nbsp;Multi-Modality Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9293146">Paper</a></td>
        <td></td>
        <td>TIP </td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>HAF</td>
        <td>Searching a Hierarchically Aggregated Fusion&nbsp;&nbsp;&nbsp;Architecture for Fast Multi-Modality Image Fusion</td>
        <td><a href="https://dl.acm.org/doi/abs/10.1145/3474085.3475299?casa_token=tT48gSwVWjkAAAAA:QaDUAB7nLzWcByiAESzOTAgFjdh5kLxS8J612shuDn3RLLIOcU1AX7AhcvYT9UlGTub1mi85Tws">Paper</a></td>
        <td><a href="https://github.com/LiuzhuForFun/Hierarchical-NAS-Image-Fusion">Code</a></td>
        <td>ACM MM</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>EMFusion</td>
        <td>EMFusion: An unsupervised enhanced medical&nbsp;&nbsp;&nbsp;image fusion network</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253521001275?casa_token=8Z3_V5mzH4YAAAAA:8nFKQlHpIrI_P965NSYYEL_dAYRFrjeASLO3ZPK2BXwGRW60yrszasTBxgCckwhGn987UyWjxhI2">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/EMFusion">Code</a></td>
        <td>InfFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>DPCN-Fusion</td>
        <td>Green Fluorescent Protein and Phase Contrast&nbsp;&nbsp;&nbsp;Image Fusion Via Detail Preserving Cross Network</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9442298">Paper</a></td>
        <td><a href="https://github.com/yuliu316316/DPCN-Fusion">Code</a></td>
        <td>TCI</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>MSPRN</td>
        <td>A multiscale residual pyramid attention&nbsp;&nbsp;&nbsp;network for medical image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1746809421000859?casa_token=rNLcNhcKwrwAAAAA:aHLHOTkdOzEqlYEDDBhX0PjLQhG0Sxel6u--8l72Ok4bJeFJPA8iuPSJeIGtYxM9aNAyBoW2fcxw">Paper</a></td>
        <td><a href="https://github.com/jeffsonfu/MSRPAN">Code</a></td>
        <td>BSPC</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>DCGAN</td>
        <td>Medical image fusion method based on dense&nbsp;&nbsp;&nbsp;block and deep convolutional generative adversarial network</td>
        <td><a href="https://link.springer.com/article/10.1007/s00521-020-05421-5">Paper</a></td>
        <td></td>
        <td>NCA</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
    </tbody>
    </table>
    
## 数字摄影图像融合(Digital Photography Image Fusion)
### 多曝光图像融合(Multi-exposure image fusion)
<table>
    <thead>
      <tr>
        <th>方法</th>
        <th>标题</th>
        <th>论文</th>
        <th>代码</th>
        <th>发表期刊或会议</th>
        <th>基础框架</th>
        <th>监督范式</th>
        <th>年份</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>DeepFuse</td>
        <td>DeepFuse: A Deep Unsupervised Approach for Exposure Fusion&nbsp;&nbsp;&nbsp;with Extreme Exposure Image Pairs</td>
        <td><a href="https://openaccess.thecvf.com/content_ICCV_2017/papers/Prabhakar_DeepFuse_A_Deep_ICCV_2017_paper.pdf">Paper</a></td>
        <td><a href="https://github.com/hli1221/Imagefusion_deepfuse">Code</a></td>
        <td>ICCV</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2017</td>
      </tr>
      <tr>
        <td>CNN</td>
        <td>Multi-exposure fusion with CNN features</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8451689/">Paper</a></td>
        <td><a href="https://github.com/xiaohuiben/MEF-CNN-feature">Code</a></td>
        <td>ICIP</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2018</td>
      </tr>
      <tr>
        <td>MEF-Net</td>
        <td>Deep guided learning for fast multi-exposure image fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8906233">Paper</a></td>
        <td><a href="https://github.com/makedede/MEFNet">Code</a></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>ICEN</td>
        <td>Multi-exposure high dynamic range imaging with informative&nbsp;&nbsp;&nbsp;content enhanced network</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S0925231219318089?casa_token=jbVTcQ7pOcoAAAAA:YDp0aWea0SCJaY8AstIN4r0PO--bL-3fxkidb41bEHXatep0PDGo5MvHY7Gtt-gLIR8yJEcFgcs">Paper</a></td>
        <td></td>
        <td>NC</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>MEF-GAN</td>
        <td>MEF-GAN: Multi-Exposure Image Fusion via Generative&nbsp;&nbsp;&nbsp;Adversarial Networks</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9112609">Paper</a></td>
        <td><a href="https://github.com/jiayi-ma/MEF-GAN">Code</a></td>
        <td>TIP</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>CF-Net</td>
        <td>Deep coupled feedback network for joint exposure fusion and&nbsp;&nbsp;&nbsp;image super-resolutions</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9357931">Paper</a></td>
        <td><a href="https://github.com/ytZhang99/CF-Net">Code</a></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>UMEF</td>
        <td>Deep unsupervised learning based on color un-referenced loss&nbsp;&nbsp;&nbsp;functions for multi-exposure image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253520303419?casa_token=w8HTDPj2GWwAAAAA:GS6sF3Sx8aYvm4-k24DcEw59Jdci-r2dyfiPPOiLHN916-ZTI2VOaoSIeq1u8eUmg_JyLlYuCQ">Paper</a></td>
        <td><a href="https://github.com/cathying-cq/UMEF">Code</a></td>
        <td>InFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>PA-AGN</td>
        <td>Two exposure fusion using prior-aware generative adversarial&nbsp;&nbsp;&nbsp;network</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9456042">Paper</a></td>
        <td></td>
        <td>TMM</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>AGAL</td>
        <td>Attention-guided Global-local Adversarial Learning for&nbsp;&nbsp;&nbsp;Detail-preserving Multi-exposure Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9684913">Paper</a></td>
        <td><a href="https://github.com/JinyuanLiu-CV/AGAL">Code</a></td>
        <td>TCSVT</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>GANFuse</td>
        <td>GANFuse: a novel multi-exposure image fusion method based on&nbsp;&nbsp;&nbsp;generative adversarial networks</td>
        <td><a href="https://link.springer.com/article/10.1007/s00521-020-05387-4">Paper</a></td>
        <td></td>
        <td>NCAA</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>DRLF</td>
        <td>Automatic Intermediate Generation With Deep Reinforcement&nbsp;&nbsp;&nbsp;Learning for Robust Two-Exposure Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9466369/">Paper</a></td>
        <td></td>
        <td>TNNLS</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>Trans-MEF</td>
        <td>TransMEF: A Transformer-Based Multi-Exposure Image Fusion&nbsp;&nbsp;&nbsp;Framework using Self-Supervised Multi-Task Learning</td>
        <td><a href="https://arxiv.org/pdf/2112.01030.pdf">Paper</a></td>
        <td><a href="https://github.com/miccaiif/TransMEF">Code</a></td>
        <td>AAAI</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>DPE-MEF</td>
        <td>Multi-exposure image fusion via deep perceptual enhancement</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253521002049?casa_token=9wOlURjhP7cAAAAA:7tMeJQtO6qVFoih_JlT4KVl1sPRInc-cLDSbe9W7474gyqG-O11XWbvlGZanRj8ZVw-9rmh88B34">Paper</a></td>
        <td><a href="https://github.com/dongdong4fei/DPE-MEF">Code</a></td>
        <td>InFus</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
    </tbody>
    </table>
    
### 多聚焦图像融合(Multi-focus image fusion)
<table>
    <thead>
      <tr>
        <th>方法</th>
        <th>标题</th>
        <th>论文</th>
        <th>代码</th>
        <th>发表期刊或会议</th>
        <th>基础框架</th>
        <th>监督范式</th>
        <th>年份</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>CNN</td>
        <td>Multi-focus image fusion with a deep convolutional neural&nbsp;&nbsp;&nbsp;network</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253516302081?casa_token=ExizHHOx2PYAAAAA:irheSncDJuLbBmd2bcejDxW9Cjf9Y9WRMUFUjfhG2DgFuY2Nni1qTg1AqwKNSsXUVBj7dFKTIQ">Paper</a></td>
        <td><a href="https://github.com/xiaohuiben/MEF-CNN-feature">Code</a></td>
        <td>InFus</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2017</td>
      </tr>
      <tr>
        <td>ECNN</td>
        <td>Ensemble of CNN for multi-focus image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253518306043?casa_token=p1rP_1bKz_YAAAAA:X75eWD_lFNZeNxpzXASehge1d0sptXBvDH-R9aAURPSF-AKRyUYIWtiyvf4m5j1UlF895TRlvFXm">Paper</a></td>
        <td><a href="https://github.com/mostafaaminnaji/ECNN">Code</a></td>
        <td>InFus</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>MLFCNN</td>
        <td>Multilevel features convolutional neural network for&nbsp;&nbsp;&nbsp;multifocus image fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8599008">Paper</a></td>
        <td></td>
        <td>TCI</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>DRPL</td>
        <td>DRPL: Deep Regression Pair Learning for Multi-Focus Image&nbsp;&nbsp;&nbsp;Fusion </td>
        <td><a href="https://ieeexplore.ieee.org/document/9020016">Paper</a></td>
        <td><a href="https://github.com/sasky1/DPRL">Code</a></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>MMF-Net</td>
        <td>An α-Matte Boundary Defocus Model-Based Cascaded Network for&nbsp;&nbsp;&nbsp;Multi-Focus Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9178463">Paper</a></td>
        <td><a href="https://github.com/xytmhy/MMF-Net-Multi-Focus-Image-Fusion">Code</a></td>
        <td>TCI</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>MFF-SSIM</td>
        <td>Towards Reducing Severe Defocus Spread Effects for Multi-Focus&nbsp;&nbsp;&nbsp;Image Fusion via an Optimization Based Strategy</td>
        <td><a href="https://ieeexplore.ieee.org/document/9269377">Paper</a></td>
        <td><a href="https://github.com/shuangxu96/MFF-SSIM">Code</a></td>
        <td>Sensors</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>MFNet</td>
        <td>Structural Similarity Loss for Learning to Fuse Multi-Focus&nbsp;&nbsp;&nbsp;Images</td>
        <td><a href="https://www.mdpi.com/1424-8220/20/22/6647">Paper</a></td>
        <td></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>GEU-Net</td>
        <td>Global-Feature Encoding U-Net (GEU-Net) for Multi-Focus Image&nbsp;&nbsp;&nbsp;Fusion [GEU-Net</td>
        <td><a href="https://ieeexplore.ieee.org/document/9242278">Paper</a></td>
        <td><a href="https://github.com/xudif/GEU-Net">Code</a></td>
        <td>TCI</td>
        <td>CNN</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>DTMNet</td>
        <td>DTMNet: A Discrete Tchebichef Moments-Based Deep Neural&nbsp;&nbsp;&nbsp;Network for Multi-Focus Image Fusion</td>
        <td><a href="https://openaccess.thecvf.com/content/ICCV2021/html/Xiao_DTMNet_A_Discrete_Tchebichef_Moments-Based_Deep_Neural_Network_for_Multi-Focus_ICCV_2021_paper.html">Paper</a></td>
        <td></td>
        <td>TMM</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>SMFuse</td>
        <td> SMFuse: Multi-Focus&nbsp;&nbsp;&nbsp;Image Fusion Via Self-Supervised Mask-Optimization</td>
        <td><a href="https://ieeexplore.ieee.org/document/9369892">Paper</a></td>
        <td><a href="https://github.com/jiayi-ma/SMFuse">Code</a></td>
        <td>NCA</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>ACGAN</td>
        <td>A generative adversarial network with adaptive constraints for&nbsp;&nbsp;&nbsp;multi-focus image fusion</td>
        <td><a href="https://link.springer.com/article/10.1007/s00521-020-04863-1">Paper</a></td>
        <td><a href="https://github.com/LeBoyal/NCAA_code">Code</a></td>
        <td>ICCV</td>
        <td>GAN</td>
        <td>有监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>FuseGAN</td>
        <td>Learning to fuse multi-focus image via conditional generative&nbsp;&nbsp;&nbsp;adversarial network</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8625482">Paper</a></td>
        <td></td>
        <td>TIP</td>
        <td>GAN</td>
        <td>有监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>D2FMIF</td>
        <td>Depth-Distilled Multi-focus Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/document/9647937">Paper</a></td>
        <td></td>
        <td>TMM</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2019</td>
      </tr>
      <tr>
        <td>SESF-Fuse</td>
        <td>SESF-Fuse: an unsupervised deep model for multi-focus image&nbsp;&nbsp;&nbsp;fusion</td>
        <td><a href="https://link.springer.com/article/10.1007/s00521-020-05358-">Paper</a></td>
        <td><a href="https://github.com/Keep-Passion/SESF-Fuse">Code</a></td>
        <td>NCAA</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>MFF-GAN</td>
        <td>MFF-GAN: An unsupervised generative adversarial network with&nbsp;&nbsp;&nbsp;adaptive and gradient joint constraints for multi-focus image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253520303572?casa_token=GA0lIhkd-_IAAAAA:xjU-avtOOmTraORf7bZZ5sNwcWgccV_EFA6bFjpA05PyFwxQZq2Giil2aJN_l0FYa0JghBiBlufg">Paper</a></td>
        <td><a href="https://github.com/HaoZhang1018/MFF-GAN">Code</a></td>
        <td>InFus</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>MFIF-GAN</td>
        <td>MFIF-GAN: A new generative adversarial network for multi-focus&nbsp;&nbsp;&nbsp;image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S0923596521001260?casa_token=FouAKgZYaXcAAAAA:zj3zevZjxqVSXpMwFcDoYPBXtrnAorpm5SkdXeDK8A93ob4QZkZeDpJgeRZtiS30Yj7Id1-c3gfS">Paper</a></td>
        <td><a href="https://github.com/ycwang-libra/MFIF-GAN">Code</a></td>
        <td>SPIC</td>
        <td>GAN</td>
        <td>有监督</td>
        <td>2021</td>
      </tr>
    </tbody>
    </table>
 
 ## 遥感影像融合(Remote Sensing Image Fusion)
 ### 全色图像锐化(Pansharpening)
 <table>
<thead>
  <tr>
    <th>方法</th>
    <th>标题</th>
    <th>论文</th>
    <th>代码</th>
    <th>发表期刊或会议</th>
    <th>基础框架</th>
    <th>监督范式</th>
    <th>年份</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>PNN</td>
    <td>Pansharpening by Convolutional Neural&nbsp;&nbsp;&nbsp;Networks</td>
    <td><a href="https://www.mdpi.com/2072-4292/8/7/594">Paper</a></td>
    <td><a href="https://github.com/ThomasWangWeiHong/Pansharpening-by-Convolutional-Neural-Network">Code</a></td>
    <td>RS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2016</td>
  </tr>
  <tr>
    <td>PanNet</td>
    <td>PanNet: A deep network architecture for&nbsp;&nbsp;&nbsp;pan-sharpening</td>
    <td><a href="https://openaccess.thecvf.com/content_iccv_2017/html/Yang_PanNet_A_Deep_ICCV_2017_paper.html">Paper</a></td>
    <td><a href="https://github.com/oyam/PanNet-Landsat">Code</a></td>
    <td>PanNet</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2017</td>
  </tr>
  <tr>
    <td>TFNet</td>
    <td>Remote sensing image fusion based on&nbsp;&nbsp;&nbsp;two-stream fusion network</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253517308060?casa_token=67RmX5_5pIsAAAAA:hbrOWj2JUylmwMrB2-MtynJXXS2av8lI_NbTB1-z9gM_oPKVlRS2XQUkciVUoDUYU3Sa3e5JJ7fL">Paper</a></td>
    <td><a href="https://github.com/liouxy/tfnet_pytorch">Code</a></td>
    <td>TFNet</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2020</td>
  </tr>
  <tr>
    <td>BKL</td>
    <td>Unsupervised Blur Kernel Learning for&nbsp;&nbsp;&nbsp;Pansharpening</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9324543/">Paper</a></td>
    <td></td>
    <td>IGARSS</td>
    <td>CNN</td>
    <td>无监督</td>
    <td>2020</td>
  </tr>
  <tr>
    <td>Pan-GAN</td>
    <td>Pan-GAN: An unsupervised pan-sharpening&nbsp;&nbsp;&nbsp;method for remote sensing image fusion</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253520302591?casa_token=ERMiphW48jIAAAAA:PgpCOB6ClGnMhrXJHFC-h3riITCdpQ7sPePX7xEtlDzOOjShCWwut66VMvQ3j8hCHjUupsiAW7Ca)%5d%20%5bCode%5d(https://github.com/yuwei998/PanGAN">Paper</a></td>
    <td><a href="https://github.com/yuwei998/PanGAN">Code</a></td>
    <td>InFus</td>
    <td>GAN</td>
    <td>无监督</td>
    <td>2020</td>
  </tr>
  <tr>
    <td>UCNN</td>
    <td>Pansharpening via Unsupervised Convolutional&nbsp;&nbsp;&nbsp;Neural Networks</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9136909/">Paper</a></td>
    <td></td>
    <td>JSTARS</td>
    <td>CNN</td>
    <td>无监督</td>
    <td>2020</td>
  </tr>
  <tr>
    <td>UPSNet</td>
    <td>UPSNet: Unsupervised Pan-Sharpening Network&nbsp;&nbsp;&nbsp;With Registration Learning Between Panchromatic and Multi-Spectral Images</td>
    <td><a href="https://ieeexplore.ieee.org/document/9248047/">Paper</a></td>
    <td></td>
    <td>ACCESS</td>
    <td>CNN</td>
    <td>无监督</td>
    <td>2020</td>
  </tr>
  <tr>
    <td>GPPNN</td>
    <td>Deep Gradient Projection Networks for&nbsp;&nbsp;&nbsp;Pan-sharpening</td>
    <td><a href="https://openaccess.thecvf.com/content/CVPR2021/html/Xu_Deep_Gradient_Projection_Networks_for_Pan-sharpening_CVPR_2021_paper.html">Paper</a></td>
    <td><a href="https://github.com/shuangxu96/GPPNN">Code</a></td>
    <td>CVPR</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>GTP-PNet</td>
    <td>GTP-PNet: A residual learning network based&nbsp;&nbsp;&nbsp;on gradient transformation prior for pansharpening</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S092427162030352X?casa_token=MpRVtfAoM8QAAAAA:0MxRCKHqREmjpngbHdN-EiTfNNbpVBikgP67VePg9hyFqm72Ot2NuRg1BeeslNmd0pVRsisi5niD">Paper</a></td>
    <td><a href="https://github.com/HaoZhang1018/GTP-PNet">Code</a></td>
    <td>ISPRS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>HMCNN</td>
    <td>Pan-Sharpening Via High-Pass Modification&nbsp;&nbsp;&nbsp;Convolutional Neural Network</td>
    <td><a href="https://github.com/jiaming-wang/HMB">Paper</a></td>
    <td><a href="https://github.com/xiaohuiben/MEF-CNN-feature">Code</a></td>
    <td>ICIP</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>SDPNet</td>
    <td>SDPNet: A Deep Network for Pan-Sharpening&nbsp;&nbsp;&nbsp;With Enhanced Information Representation</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9200533/">Paper</a></td>
    <td><a href="https://github.com/hanna-xu/SDPNet-for-pansharpening">Code</a></td>
    <td>TGRS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>SIPSA-Net</td>
    <td>SIPSA-Net: Shift-Invariant Pan Sharpening&nbsp;&nbsp;&nbsp;with Moving Object Alignment for Satellite Imagery</td>
    <td><a href="https://openaccess.thecvf.com/content/CVPR2021/html/Lee_SIPSA-Net_Shift-Invariant_Pan_Sharpening_With_Moving_Object_Alignment_for_Satellite_CVPR_2021_paper.html">Paper</a></td>
    <td><a href="https://github.com/brachiohyup/SIPSA">Code</a></td>
    <td>CVPR</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>SRPPNN</td>
    <td>Super-resolution-guided progressive&nbsp;&nbsp;&nbsp;pansharpening based on a deep convolutional neural network</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9172104">Paper</a></td>
    <td><a href="https://github.com/MrCPlusPlus/SRPPNN">Code</a></td>
    <td>TGRS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>PSGAN</td>
    <td>PSGAN: A generative adversarial network for&nbsp;&nbsp;&nbsp;remote sensing image pan-sharpening</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9306912">Paper</a></td>
    <td><a href="https://github.com/zhysora/PSGan-Family">Code</a></td>
    <td>TGRS</td>
    <td>GAN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>MDCNN</td>
    <td>MDCNN: multispectral pansharpening based on a&nbsp;&nbsp;&nbsp;multiscale dilated convolutional neural network</td>
    <td><a href="https://www.spiedigitallibrary.org/journals/journal-of-applied-remote-sensing/volume-15/issue-3/036516/MDCNN--multispectral-pansharpening-based-on-a-multiscale-dilated-convolutional/10.1117/1.JRS.15.036516.short?SSO=1">Paper</a></td>
    <td></td>
    <td>JRS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>LDP-Net</td>
    <td>LDP-Net: An Unsupervised Pansharpening&nbsp;&nbsp;&nbsp;Network Based on Learnable Degradation Processes</td>
    <td><a href="https://arxiv.org/abs/2111.12483">Paper</a></td>
    <td><a href="https://github.com/suifenglian/LDP-Net">Code</a></td>
    <td>Arxiv</td>
    <td>CNN</td>
    <td>无监督</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>DIGAN</td>
    <td>Pansharpening approach via two-stream detail&nbsp;&nbsp;&nbsp;injection based on relativistic generative adversarial networks</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S0957417421013440?casa_token=UH2brpdrn4MAAAAA:yh_OVkvU5Lg5r6bv5cKFXIZNR4PS8Q6SMq-tjj4Wcs4Bekpon4fnSzocnLnZzQYX-066svxzb9w">Paper</a></td>
    <td></td>
    <td>ESA</td>
    <td>GAN</td>
    <td>有监督</td>
    <td>2022</td>
  </tr>
  <tr>
    <td>DPFN</td>
    <td>A Dual-Path Fusion Network for Pan-Sharpening</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9467620/">Paper</a></td>
    <td><a href="https://github.com/jiaming-wang/DPFN">Code</a></td>
    <td>TGRS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2022</td>
  </tr>
  <tr>
    <td>MSGAN</td>
    <td>An Unsupervised Multi-scale Generative&nbsp;&nbsp;&nbsp;Adversarial Network for Remote Sensing Image Pan-Sharpening</td>
    <td><a href="https://link.springer.com/chapter/10.1007/978-3-030-98355-0_30">Paper</a></td>
    <td></td>
    <td>ICMM</td>
    <td>GAN</td>
    <td>无监督</td>
    <td>2022</td>
  </tr>
  <tr>
    <td>UCGAN</td>
    <td>Unsupervised Cycle-Consistent Generative&nbsp;&nbsp;&nbsp;Adversarial Networks for Pan Sharpening</td>
    <td><a href="https://ieeexplore.ieee.org/document/9755137/">Paper</a></td>
    <td><a href="https://github.com/zhysora/UCGAN">Code</a></td>
    <td>TGRS</td>
    <td>GAN</td>
    <td>无监督</td>
    <td>2022</td>
  </tr>
  <tr>
    <td>D2TNet</td>
    <td>A ConvLSTM Network with Dual-direction Transfer for Pan-sharpening</td>
    <td><a href="https://ieeexplore.ieee.org/abstract/document/9761261">Paper</a></td>
    <td><a href="https://github.com/Meiqi-Gong/D2TNet">Code</a></td>
    <td>TGRS</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2022</td>
  </tr>  
  <tr>
    <td>P2Sharpen</td>
    <td>P2Sharpen: A progressive pansharpening network with deep spectral transformation</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253522001798">Paper</a></td>
    <td><a href="https://github.com/Baixuzx7/P2Sharpen">Code</a></td>
    <td>INFFus</td>
    <td>CNN</td>
    <td>有监督</td>
    <td>2023</td>
  </tr>
</tbody>
</table>

## 通用图像融合框架(General Image Fusion Framerwork)
<table>
    <thead>
      <tr>
        <th>方法</th>
        <th>标题</th>
        <th>论文</th>
        <th>代码</th>
        <th>发表期刊或会议</th>
        <th>基础框架</th>
        <th>监督范式</th>
        <th>年份</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>IFCNN</td>
        <td>IFCNN: A general image fusion framework based on convolutional&nbsp;&nbsp;&nbsp;neural network</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253518305505?casa_token=aECX-sSMXqUAAAAA:xdsAZ2lJjOrUmIWTEvDO1mdCzsA9eaDxgkxiL1r4RiX_DP21TVxAiy2jkMOsFXyzVQZ4gp3NEAPj">Paper</a></td>
        <td><a href="https://github.com/uzeful/IFCNN">Code</a></td>
        <td>InFus</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>FusionDN</td>
        <td>FusionDN: A Unified Densely Connected Network for Image&nbsp;&nbsp;&nbsp;Fusion </td>
        <td><a href="https://ojs.aaai.org/index.php/AAAI/article/view/6936">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/FusionDN">Code</a></td>
        <td>AAAI</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>PMGI</td>
        <td>Rethinking the Image Fusion: A Fast Unified Image Fusion&nbsp;&nbsp;&nbsp;Network based on Proportional Maintenance of Gradient and Intensity </td>
        <td><a href="https://ojs.aaai.org/index.php/AAAI/article/view/6975">Paper</a></td>
        <td><a href="https://github.com/HaoZhang1018/PMGI_AAAI2020">Code</a></td>
        <td>AAAI</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2020</td>
      </tr>
      <tr>
        <td>CU-Net</td>
        <td>Deep Convolutional Neural Network for Multi-Modal Image&nbsp;&nbsp;&nbsp;Restoration and Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9055063/">Paper</a></td>
        <td><a href="https://github.com/cindydeng1991/TPAMI-CU-Net">Code</a></td>
        <td>TPAMI</td>
        <td>CNN</td>
        <td>有监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>SDNet</td>
        <td>SDNet: A Versatile Squeeze-and-Decomposition Network for&nbsp;&nbsp;&nbsp;Real-Time Image Fusion</td>
        <td><a href="https://link.springer.com/article/10.1007/s11263-021-01501-8">Paper</a></td>
        <td><a href="https://github.com/HaoZhang1018/SDNet">Code</a></td>
        <td>IJCV</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>DIF-Net</td>
        <td>Unsupervised Deep Image Fusion With Structure Tensor&nbsp;&nbsp;&nbsp;Representations</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/8962327/">Paper</a></td>
        <td><a href="https://github.com/kimphys/DIFNet.pytorch">Code</a></td>
        <td>TIP</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>IFSepR</td>
        <td>IFSepR: A general framework for image fusion based on separate&nbsp;&nbsp;&nbsp;representation learning</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9622164">Paper</a></td>
        <td></td>
        <td>TMM</td>
        <td>AE</td>
        <td>自监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>MTOE</td>
        <td>Multiple Task-Oriented Encoders for Unified Image Fusion</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9428212">Paper</a></td>
        <td></td>
        <td>ICME</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2021</td>
      </tr>
      <tr>
        <td>U2Fusion</td>
        <td>U2Fusion: A Unified Unsupervised Image Fusion Network</td>
        <td><a href="https://ieeexplore.ieee.org/abstract/document/9151265">Paper</a></td>
        <td><a href="https://github.com/hanna-xu/U2Fusion">Code</a></td>
        <td>TPAMI</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>SwinFusion</td>
        <td>SwinFusion: Cross-domain Long-range Learning for General Image Fusion via Swin Transformer</td>
        <td><a href="https://ieeexplore.ieee.org/document/9812535">Paper</a></td>
        <td><a href="https://github.com/Linfeng-Tang/SwinFusion">Code</a></td>
        <td>JAS</td>
        <td>Transformer</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>DeFusion</td>
        <td>Fusion from Decomposition: A Self-Supervised Decomposition Approach for Image Fusion</td>
        <td><a href="https://www.ecva.net/papers/eccv_2022/papers_ECCV/papers/136780706.pdf">Paper</a></td>
        <td><a href="https://github.com/erfect2020/DecompositionForFusion">Code</a></td>
        <td>ECCV</td>
        <td>CNN</td>
        <td>无监督</td>
        <td>2022</td>
      </tr>
      <tr>
        <td>UIFGAN</td>
        <td>UIFGAN: An unsupervised continual-learning generative adversarial network for unified image fusion</td>
        <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253522000756">Paper</a></td>
        <td><a href="">Code</a></td>
        <td>INFFus</td>
        <td>GAN</td>
        <td>无监督</td>
        <td>2023</td>
      </tr>
    </tbody>
</table>

## 综述(Survey)
<table>
<thead>
  <tr>
    <th>标题</th>
    <th>论文</th>
    <th>代码</th>
    <th>发表期刊或会议</th>
    <th>年份</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>A review of&nbsp;&nbsp;&nbsp;remote sensing image fusion methods</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253516300173?casa_token=1JHuWMUO20QAAAAA:gzRSAmDvI5iciNDoihkI8raYANyPb6PzXE-f9U5iE9LUh9FIsfOiMBLK4VFyA6l84eDIV9HOIKs6">Paper</a></td>
    <td></td>
    <td>InFus</td>
    <td>2016</td>
  </tr>
  <tr>
    <td>Pixel-level&nbsp;&nbsp;&nbsp;image fusion: A survey of the state of the art</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253516300458?casa_token=8TemDHLkC_oAAAAA:ucXl6DUaMy9PpEnRueneNDpDBMeDy8P5M6JAaLkhg1Y6dvA9fdFHnuq9aXMapfMgfC18Ffa5eT07">Paper</a></td>
    <td></td>
    <td>InFus</td>
    <td>2017</td>
  </tr>
  <tr>
    <td>Deep learning for pixel-level image fusion: Recent advances and future prospects</td>
    <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253517305936?casa_token=PPYorDBH2wAAAAAA:6FssewzwcKsdfVDQGoQH9Uu154HtjOTw05vXK2S7c3g02QzRLroC1gJ7MXwdMCwqsC2Mx9UWgEx5">Paper</a></td>
    <td></td>
    <td>InFus</td>
    <td>2018</td>
  </tr>
  <tr>
    <td>Infrared and visible image fusion methods and applications: A survey</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253517307972?casa_token=HpeaaU2oKNIAAAAA:MgWpCued5JhnK3KDBLQ9dbpzSORbThpSfTPXFGJDqYEMCl6C1nmTI63MG_FzaDBnGPmJKUxW-KAt">Paper</a></td>
    <td></td>
    <td>InFus</td>
    <td>2019</td>
  </tr>
  <tr>
    <td>Multi-focu image fusion: A Survey of the state of the art</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253520303109?casa_token=yugI5Tt6HAMAAAAA:jT4uV1xK2HjtfZWPuh2FkcqtHC1CN5TAYGR64ZWika5B0xAro9r-S5qOk30UDrNziKDuWPLQIsWw">Paper</a></td>
    <td></td>
    <td>InFus</td>
    <td>2020</td>
  </tr>
  <tr>
    <td>Image fusion meets deep learning: A survey and perspective</td>
    <td><a href="https://www.sciencedirect.com/science/article/pii/S1566253521001342?casa_token=4BDX2mCr4VwAAAAA:LzXkYoP1QwTW5lXEpMCdVEZ2W27ZXf8VbJIVOX10dl-SpYuuYkNyaTk7uiD5JCjSbn6grf8DXy33">Paper</a></td>
    <td></td>
    <td>InFus</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>Deep Learning-based Multi-focus Image Fusion: A Survey and A Comparative&nbsp;&nbsp;&nbsp;Study </td>
    <td><a href="https://ieeexplore.ieee.org/document/9428544/">Paper</a></td>
    <td><a href="https://github.com/xingchenzhang/MFIFB">Code</a></td>
    <td>TPAMI </td>
    <td>2021</td>
  </tr>
  <tr>
    <td>Benchmarking and comparing multi-exposure image fusion algorithms</td>
    <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253521000233?casa_token=3fZWWc9-l_kAAAAA:en9qngjXa_neaqkNdp73a25flyglW2IzNkjuYSqUYh4ZxvZy63n48-pzPboX1p2I95ofJxiz2ptp">Paper</a></td>
    <td><a href="https://github.com/xingchenzhang/MEFB">Code</a></td>
    <td>InFus</td>
    <td>2021</td>
  </tr>
  <tr>
    <td>Current advances and future perspectives of image fusion: A comprehensive review</td>
    <td><a href="https://www.sciencedirect.com/science/article/abs/pii/S1566253522001518">Paper</a></td>
    <td><a href="">Code</a></td>
    <td>InFus</td>
    <td>2023</td>
  </tr>
</tbody>
</table>

## 数据集(Dataset)
<table>
<thead>
  <tr>
    <th>融合场景</th>
    <th>数据集</th>
    <th>下载链接</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="6">红外和可见光图像融合</td>
    <td>TNO</td>
    <td><a href="https://figshare.com/articles/dataset/TNO_Image_Fusion_Dataset/1008029">https://figshare.com/articles/dataset/TNO_Image_Fusion_Dataset/1008029</a></td>
  </tr>
  <tr>
    <td>INO</td>
    <td><a href="https://www.ino.ca/en/technologies/video-analytics-dataset/videos/">https://www.ino.ca/en/technologies/video-analytics-dataset/videos/</a></td>
  </tr>
  <tr>
    <td>RoadScene</td>
    <td><a href="https://github.com/hanna-xu/RoadScene">https://github.com/hanna-xu/RoadScene</a></td>
  </tr>
  <tr>
    <td>MSRS</td>
    <td><a href="https://github.com/Linfeng-Tang/MSRS">https://github.com/Linfeng-Tang/MSRS</a></td>
  </tr>
  <tr>
    <td>LLVIP</td>
    <td><a href="https://bupt-ai-cz.github.io/LLVIP/">https://bupt-ai-cz.github.io/LLVIP/</a></td>
  </tr>
  <tr>
    <td>M3FD</td>
    <td><a href="https://github.com/JinyuanLiu-CV/TarDAL">https://github.com/JinyuanLiu-CV/TarDAL</a></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>医学图像融合</td>
    <td>Harvard</td>
    <td><a href="http://www.med.harvard.edu/AANLIB/home.html">http://www.med.harvard.edu/AANLIB/home.html</a></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="2">多曝光图像融合</td>
    <td>MEF</td>
    <td><a href="https://github.com/csjcai/SICE">https://github.com/csjcai/SICE</a></td>
  </tr>
  <tr>
    <td>MEFB</td>
    <td><a href="https://github.com/xingchenzhang/MEFB">https://github.com/xingchenzhang/MEFB</a></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">多聚焦图像融合</td>
    <td>Lytro</td>
    <td><a href="https://mansournejati.ece.iut.ac.ir/content/lytro-multi-focus-dataset">https://mansournejati.ece.iut.ac.ir/content/lytro-multi-focus-dataset</a></td>
  </tr>
  <tr>
    <td>MFI-WHU</td>
    <td><a href="https://github.com/HaoZhang1018/MFI-WHU">https://github.com/HaoZhang1018/MFI-WHU</a></td>
  </tr>
  <tr>
    <td>MFFW</td>
    <td><a href="https://www.semanticscholar.org/paper/MFFW%3A-A-new-dataset-for-multi-focus-image-fusion-Xu-Wei/4c0658f338849284ee4251a69b3c323908e62b45">https://www.semanticscholar.org/paper/MFFW%3A-A-new-dataset-for-multi-focus-image-fusion-Xu-Wei/4c0658f338849284ee4251a69b3c323908e62b45</a></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">全色图像锐化</td>
    <td>GaoFen</td>
    <td><a href="https://directory.eoportal.org/web/eoportal/satellite-missions/g">https://directory.eoportal.org/web/eoportal/satellite-missions/g</a></td>
  </tr>
  <tr>
    <td>WorldView</td>
    <td><a href="https://worldview.earthdata.nasa.gov/">https://worldview.earthdata.nasa.gov/</a></td>
  </tr>
  <tr>
    <td>GeoEye</td>
    <td><a href="https://earth.esa.int/eogateway/missions/geoeye-1">https://earth.esa.int/eogateway/missions/geoeye-1</a></td>
  </tr>
  <tr>
    <td>QuickBird</td>
    <td><a href="https://www.satimagingcorp.com/satellite-sensors/quickbird/">https://www.satimagingcorp.com/satellite-sensors/quickbird/</a></td>
  </tr>
</tbody>
</table>

## 评估指标(Evaluation Metric)
### 通用评估指标(General evaluation metric)
通用评估指标位于：https://github.com/Linfeng-Tang/Image-Fusion/tree/main/General%20Evaluation%20Metric or https://github.com/Linfeng-Tang/Evaluation-for-Image-Fusion
### 遥感影像融合评估指标(Evaluation metric for pansharpening)


## Citation
如果我们的总结对你有所帮助, 请引用以下论文：

```
@article{Tang2022Survey,
  title={Deep learning-based image fusion: A survey},
  author={Tang, Linfeng and Zhang, Hao and Xu, Han and Ma, Jiayi},  
  journal={Journal of Image and Graphics}
}
```

```
@article{Ma2022SwinFusion,
  title={SwinFusion: Cross-domain Long-range Learning for General Image Fusion via Swin Transformer},
  author={Ma, Jiayi and Tang, Linfeng and Fan, Fan and Huang, Jun and Mei, Xiaoguang and Ma, Yong},
  journal={IEEE/CAA Journal of Automatica Sinica},
  volume={9},
  number={7},
  pages={1200--1217},
  year={2022},
  publisher={IEEE}
}
```

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
@article{Tang2022DIVFusion,
  title={DIVFusion: Darkness-free infrared and visible image fusion},
  author={Tang, Linfeng and Xiang, Xinyu and Zhang, Hao and Gong, Meiqi and Ma, Jiayi},
  journal={Information Fusion},
  volume = {91},
  pages = {477-493},
  year = {2023},
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
