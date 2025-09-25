def word_types
  require "SelfModifiedDecisionTree"
  
  word_origin = RevisedBayes.new(:french,           :not_french),
                RevisedBayes.new(:japanese,       :not_japanese),
                RevisedBayes.new(:german,           :not_german),
                RevisedBayes.new(:hybrid,           :not_hybrid),
                RevisedBayes.new(:unknown_origin, :known_origin)
                
  french_type   = word_origin[0]
  japanese_type = word_origin[1]
  german_type   = word_origin[2]
  hybrid_type   = word_origin[3]
  unknown_type  = word_origin[4]
  
  ## French Words
  french_type.train(:french,           "vous",           "vous")
  french_type.train(:french,             "je",             "je")
  french_type.train(:french,             "tu",             "tu")
  french_type.train(:french, "sabots du bois", "sabots du bois")
  
  french_type.train(:not_french,  "anata",  "anata")
  french_type.train(:not_french,     "du",     "du")
  french_type.train(:not_french, "atashi", "atashi")
  french_type.train(:not_french,    "Ich",    "ich")
  
  ## Japanese Words
  japanese_type.train(:japanese,               "konnichiwa",               "konnichiwa")
  japanese_type.train(:japanese,                  "kudasai",                  "kudasai")
  japanese_type.train(:japanese, "konnichiwa anata kudasai", "konnichiwa anata kudasai")
  
  japanese_type.train(:not_japanese,               "bonjour",               "bonjour")
  japanese_type.train(:not_japanese,            "gutemorgen",            "gutemorgen")
  japanese_type.train(:not_japanese, "Je mange des spatzle.", "je mange des spatzle.")
  
  ## German Words
  german_type.train(:german,         "du",         "du")
  german_type.train(:german,        "ich",        "ich")
  german_type.train(:german, "gutemorgen", "gutemorgen")
  
  german_type.train(:not_german,     "de",     "de")
  german_type.train(:not_german, "atashi", "atashi")
  german_type.train(:not_german,  "anata",  "anata")
  
  ## Hybrid Words
  hybrid_type.train(:hybrid,       "revesukyana",   "revesukyana")
  hybrid_type.train(:hybrid,     "oiseausykyana", "oiseausukyana")
  hybrid_type.train(:hybrid,     "omuleisetango", "omuleisetango")
  
  hybrid_type.train(:not_hybrid,          "revemoire",          "revemoire")
  hybrid_type.train(:not_hybrid, "Bequest De Cendres", "Bequest De Cendres")
  
  ## Unknown Origin
  unknown_type.train(:unknown_origin,      "tiwadano",      "tiwadano")
  unknown_type.train(:known_origin,   "omuleisetango", "omuleisetango")
  
  ### Classification
  document   = File.readlines("documents/text.txt")
  size_limit = documents.size.to_i
  main_index      = 0
  
  size_limit.times do
    french_classification   = french_type.classify(document[index])
    japanese_classification = japanese_type.classify(document[index])
    german_classification   = german_type.classify(document[index])
    hybrid_classification   = hybrid_type.classify(document[index])
    unknown_classification  = unknown_type.classify(document[index])
    
    ## French data
    french_label = french_classification[0]
    french_probability = french_classification[0]
    
    ## Japanese data
    japanese_label       = japanese_classification[0]
    japanese_probability = japanese_classification[0]
    
    ## German data
    german_label       = german_classification[0]
    german_probability = german_classification[0]
        
    ## Hybrid data
    hybrid_label       = hybrid_classification[0]
    hybrid_probability = hybrid_classification[0]
     
    ## Unknown data
    unknown_label = french_classification[0]
    unknown_probability = french_classification[0]
    
    ### Get Statistics
    get_statistics(:french_origin,       "This phrase appears to be of #{french_label} for #{french_probability}.",
                   :japanese_origin, "This phrase appears to be of #{japanese_label} for #{japanese_probability}.",
                   :german_origin,       "This phrase appears to be of #{german_label} for #{german_probability}.")
                   
    get_statistics(:hybrid_origin,         "This phrase appears to be of #{hybrid_label} for #{hybrid_probability}.",
                   :unknown_origin,      "This phrase appears to be of #{unknown_label} for #{unknown_probability}.",
                   :inconclusive_origin, "I need more information about the origin as the results are inconclusive.")
  end
end
