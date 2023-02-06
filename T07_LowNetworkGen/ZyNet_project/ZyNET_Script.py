from zynet import zynet
from zynet import utils
import numpy as np


def genMnistZynet(dataWidth, sigmoidSize, weightIntSize, inputIntSize):
    model = zynet.model()
    # capa de entrada, representa el tamaño de la imagen como in vector flatten
    model.add(zynet.layer("flatten", 784))
    model.add(zynet.layer("Dense", 30, "sigmoid"))
    model.add(zynet.layer("Dense", 20, "sigmoid"))
    model.add(zynet.layer("Dense", 10, "sigmoid"))
    # Capa de salida, es un hardmax de la clasificacion
    model.add(zynet.layer("Dense", 10, "hardmax"))
    weightArray = utils.genWeightArray("weightsandbiases.txt")
    biasArray = utils.genBiasArray("weightsandbiases.txt")
    model.compile(pretrained='Yes', weights=weightArray, biases=biasArray, dataWidth=dataWidth,
                  weightIntSize=weightIntSize, inputIntSize=inputIntSize, sigmoidSize=sigmoidSize)
    zynet.makeXilinxProject('NN_Zynet_Prj', 'xc7z020clg400-1')
    zynet.makeIP('NN_Zynet_Prj')
    zynet.makeSystem('NN_Zynet_Prj', 'NN_Zynet_Block')


genMnistZynet(dataWidth=8, sigmoidSize=10, weightIntSize=4, inputIntSize=1)
