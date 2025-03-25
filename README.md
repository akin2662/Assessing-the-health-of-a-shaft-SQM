# Assessing-the-health-of-a-shaft--SOM
**Note:** This project was done as a requirement for the course ENME691- Industrial AI at University of Maryland,College Park and was done in collaboration with Murilo Nicoluzzi (murinico@umd.edu) and Aniket Bharamgonda (abharamg@umd.edu). The data for this project was provided by the Industrial AI Center (iaiCenter) at University of Maryland, College Park. Contact: contact@iaicenter.com

## Project Description
**Rotor Bearing Health Monitoring:** This project implements a machine learning system (Self Organizing Maps) to diagnose imbalance faults in rotor-bearing systems using vibration data analysis. The system processes accelerometer data from three operational conditions:

* Healthy: No screws attached to rotating disk
* Faulty (Imbalance 2): Two screws inducing imbalance
* Testing: 30 unlabeled samples for model validation

Here is the complete report of the project | [Report](https://github.com/user-attachments/files/18746259/Assignment.4.-.final.pdf)

**Key Features:** 

* Fast Fourier Transform (FFT) converts raw vibration data to frequency domain
* Amplitude extraction at 1x, 2x frequencies
* Sideband examination
* Self-Organizing Maps (SOM) and SOM-MQE methods for fault detection
* Confusion Matrix Analysis: Visualized model performance
* Workflow: raw data → FFT processing → classification

## Libraries and Dependencies

* MATLAB R2024b
* Statistics and Machine Learning Toolbox
* Signal Processing Toolbox
* SOM Toolbox
