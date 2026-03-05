# Surviving the Titanic with Neural Networks

This repository contains a step-by-step tutorial on how to build and train a neural network using **PyTorch** and **Scikit-Learn** to predict survival on the Titanic dataset.

[![Binder](https://mybinder.org/static/logo.svg)](https://mybinder.org/v2/gh/jl1990/surviving-titanic-neural-networks/HEAD)

## Overview

The project is divided into three main parts, each documented in a separate Jupyter notebook:

1.  **[01_data-analysis.ipynb](tutorial/01_data-analysis.ipynb)**: Exploratory Data Analysis (EDA) and Data Preprocessing. We handle missing values, visualize feature correlations, and address skewed data distribution.
2.  **[02_model_training.ipynb](tutorial/02_model_training.ipynb)**: Building and Training the Neural Network. We define a PyTorch model, split the data into training and validation sets, and save the best-performing model and its preprocessing pipeline.
3.  **[03_titanic_predictions.ipynb](tutorial/03_titanic_predictions.ipynb)**: Making Predictions. We load the trained model and preprocessor to predict the survival probability for custom characters (like Jack and Rose from the movie).

## Project Structure

- `dataset/`: Contains `train.csv` and `test.csv`.
- `images/`: Diagrams and plots used throughout the tutorial.
- `models/`: Saved model weights (`titanic_best_model.pth`) and scikit-learn preprocessor (`titanic_preprocessor.joblib`).
- `tutorial/`: The core Jupyter notebooks for the tutorial.
- `requirements.txt`: Python dependencies required to run the project.

## Getting Started

### Access via Binder

You can run the notebooks directly in your browser without any installation using Binder:

[Launch on Binder](https://mybinder.org/v2/gh/jl1990/surviving-titanic-neural-networks/HEAD)

### Local Installation

If you prefer to run the project locally, ensure you have Python installed, then follow these steps:

#### Using Docker (Recommended)

1. Start the Jupyter environment:
   ```bash
   docker compose up
   ```

2. Open your browser at `http://localhost:8888`.
3. Use the token `titanic` to log in (if prompted).

> **Note on Image Size**: The base Jupyter image (`scipy-notebook`) and the full PyTorch installation are quite large (around 10GB+) because they include GPU support and pre-installed scientific libraries. To reduce build time and context size, we've included a `.dockerignore` file.

#### Using Python Environment Directly

1. Clone the repository:
   ```bash
   git clone https://github.com/jl1990/surviving-titanic-neural-networks.git
   cd surviving-titanic-neural-networks
   ```

2. Install the dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Launch Jupyter Notebook:
   ```bash
   jupyter notebook
   ```

Navigate to the `tutorial/` folder and start with `01_data-analysis.ipynb`.

## Requirements

The project uses the following main libraries:
- `torch` (PyTorch)
- `pandas`
- `scikit-learn`
- `seaborn`
- `matplotlib`
- `numpy`
- `joblib`
