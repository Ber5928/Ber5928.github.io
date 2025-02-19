# ChatBot Project - BlenderBot with Cornell Movie Dialogs Dataset

## Project Overview
This project implements a conversational AI chatbot using the **BlenderBot model**, fine-tuned on the **Cornell Movie Dialogs Dataset**. The chatbot is trained with **PyTorch** and **Hugging Face Transformers**, optimizing GPU performance for efficient model execution.

## File Description
- **`Conrnell_bleder.ipynb`**: Jupyter Notebook containing the chatbot implementation, including dataset preprocessing, model training, fine-tuning, and evaluation.

## Key Components
### 1. Data Preparation
- Loading and preprocessing the **Cornell Movie Dialogs Dataset**
- Extracting and cleaning conversation pairs
- Tokenizing dialogues using Hugging Face Transformers

### 2. Model Architecture
- Utilizing **BlenderBot**, a state-of-the-art conversational model
- Fine-tuning with dialogue pairs from the dataset
- Implementing **PyTorch Trainer** for training optimization

### 3. Evaluation & Deployment
- Assessing model performance using loss metrics
- Running inference on chatbot responses
- Deploying with optimized GPU acceleration for real-time conversations

## Dependencies
To install the required Python libraries, run:

```bash
pip install -r requirements.txt
```

Or manually install:

```bash
pip install torch transformers datasets numpy pandas matplotlib scikit-learn
```

## How to Run
1. Open the Jupyter Notebook:
   ```bash
   jupyter notebook Conrnell_bleder.ipynb
   ```
2. Run the cells sequentially to load data, train the model, and generate chatbot responses.
3. Use the trained chatbot to generate human-like conversational responses.

## Results
- The chatbot successfully generates conversational responses based on movie dialogues.
- Fine-tuned model improves conversational coherence and response accuracy.
- Further enhancements include expanding datasets and fine-tuning hyperparameters.

## Ethical Considerations
- **Bias & Fairness**: The model inherits biases from the Cornell dataset, which may affect response generation.
- **Privacy & Safety**: Ensuring chatbot responses adhere to ethical and secure conversational guidelines.

## Author
**Brian Reppeto**  
Course: **DSC680 - Machine Learning for Data Science**
