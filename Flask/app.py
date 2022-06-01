from crypt import methods
from flask import Flask, request, render_template
import spacy

app=Flask("Spacy")

@app.route("/spacy", methods=["GET"])
def spacyModel():
    data=request.args.get("x")
    english=spacy.load('en_core_web_sm')
   # english.Defaults.stop_words.remove("n\'t")
   # english.Defaults.stop_words.remove("no")
   # english.Defaults.stop_words.remove("nor")
    e1=english(data)
    for token in e1:
        token=str(token)
        print(token)
        f = open("userTextDB.txt", "a")
        f.write("{}\n".format(token))
        f.close()
    return "Recorded into local DB\n"

app.run(host="0.0.0.0", port=1234, debug=True)

