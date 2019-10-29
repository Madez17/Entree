import imutils
import numpy as np
import pickle
import cv2
import face_recognition
import os

class Recognition:
    """ Class Recognition logic"""
    def __init__(self):
        encoding = 'f_recognition/encodings/encoding1.pickle'
        self.__data = pickle.loads(open(encoding, "rb").read())

    def recognize(self, frame):
        """ Recognize depends of the phot the person"""
        rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        rgb = imutils.resize(frame, width=400)
        r = frame.shape[1] / float(rgb.shape[1])
        boxes = face_recognition.face_locations(rgb, model= "hog")
        encodings = face_recognition.face_encodings(rgb, boxes)
        names = []
        for encoding in encodings:
            matches = face_recognition.compare_faces(np.array(encoding),np.array(self.__data["encodings"]))
            name = "Unknown"
            if True in matches:
                matchedIdxs = [i for (i, b) in enumerate(matches) if b]
                counts = {}
                for i in matchedIdxs:
                    name = self.__data["names"][i]
                    counts[name] = counts.get(name, 0) + 1
                    name = max(counts, key=counts.get)
            names.append(name)
        return names