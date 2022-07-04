# ProMix: Combating Label Noise via Maximizing Clean Sample Utility

This work has been submitted to the **1st Learning and Mining with Noisy Labels Challenge** in IJCAI-ECAI 2022.

<b>Title</b>: ProMix: Combating Label Noise via Maximizing Clean Sample Utility \
<b>Authors</b>: Haobo Wang*, Ruixuan Xiao*, Yiwen Dong, Lei Feng, Junbo Zhao \
<b>Institute</b>: Zhejiang University, Chongqing Unveristy

The shell codes are provided in ```run.sh```. Please correctly set the data path arguments.

### Framework
![Framework](./resources/framework.png)

### Main Results
Accuracy comparisons on CIFAR-10N and CIFAR-100N under different noise types.

![Results](./resources/results.png)

Detection ability of ProMix on CIFAR-10N datasets. Noise detection indicates the wrongly-labeled data are regarded as positive, and clean detection regards correctly-labeled ones as positive.

![Results](./resources/results_detection.png)
