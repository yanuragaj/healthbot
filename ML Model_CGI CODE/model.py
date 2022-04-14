#!/usr/bin/python3
import cgi


print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()

form=cgi.FieldStorage()
x1=form.getvalue("x1")
x2=form.getvalue("x2")
x3=form.getvalue("x3")
x4=form.getvalue("x4")
x5=form.getvalue("x5")


from tensorflow import keras
model = keras.models.load_model('100%.h5')
p=model.predict([[int(x1),int(x2),int(x3),int(x4),int(x5)]])
print("PREDICTED DIET-TYPE \n")
print(p)
print("CONVERTED IN LIST DTYPE \n")
p=list(p)
print(p)
import math
m=p.index(max(p))
print("SUGGESTED DIET-TYPE")
print(m)
