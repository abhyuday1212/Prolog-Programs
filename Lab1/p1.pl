related(ai,machineLearning).
related(time_Complexity,algorithm).
related(prolog,ai).
related(prolog,naturalLanguageProcessing).
related(prolog,machineLearning) :- related(prolog,ai).
related(machineLearning,naturalLanguageProcessing) :- related(prolog,machineLearning).
