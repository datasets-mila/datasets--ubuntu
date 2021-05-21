### OVERVIEW

This dataset was created using Subword Neural Machine Translation, retrieved August 2nd, 2016:

    https://github.com/rsennrich/subword-nmt

### GENERATION

The dataset was created by running the following commands:

    ./subword-nmt/learn_bpe.py -s 5000 < Raw/raw_training_text.txt > Ubuntu_Codes_5000.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/raw_valid_text.txt > Valid_Shuffled_Dataset_5000BPE.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/raw_test_text.txt > Test_Shuffled_Dataset_5000BPE.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/raw_training_text.txt > Train_Shuffled_Dataset_5000BPE.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/ResponseContextPairs/raw_validation_contexts.txt > raw_validation_contexts_5000BPE.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/ResponseContextPairs/raw_validation_responses.txt > raw_validation_responses_5000BPE.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/ResponseContextPairs/raw_testing_contexts.txt > raw_testing_contexts_5000BPE.txt
    ./subword-nmt/apply_bpe.py -c Ubuntu_Codes_5000.txt < Raw/ResponseContextPairs/raw_testing_responses.txt > raw_testing_responses_5000BPE.txt


    python3 scripts/convert-text2dict.py Train_Shuffled_Dataset_5000BPE.txt Train
        INFO:text2dict:Total word frequency in dictionary 52743434 
        INFO:text2dict:Vocab size 5170
        INFO:text2dict:Saving to Train.dialogues.pkl.
        INFO:text2dict:Saving to Train.dict.pkl.
        INFO:text2dict:Number of unknowns 0
        INFO:text2dict:Number of terms 52743434
        INFO:text2dict:Mean document length 117.000000
        INFO:text2dict:Writing training 448833 dialogues (0 left out)

    python3 scripts/convert-text2dict.py Valid_Shuffled_Dataset_5000BPE.txt --dict Train.dict.pkl Valid
        INFO:text2dict:Vocab size 5170
        INFO:text2dict:Overwriting Valid.dialogues.pkl.
        INFO:text2dict:Number of unknowns 1
        INFO:text2dict:Number of terms 2481070
        INFO:text2dict:Mean document length 126.000000
        INFO:text2dict:Writing training 19584 dialogues (0 left out)

    python3 scripts/convert-text2dict.py Test_Shuffled_Dataset_5000BPE.txt --dict Train.dict.pkl Test
        INFO:text2dict:Vocab size 5170
        INFO:text2dict:Saving to Test.dialogues.pkl.
        INFO:text2dict:Number of unknowns 24
        INFO:text2dict:Number of terms 2468673
        INFO:text2dict:Mean document length 130.000000
        INFO:text2dict:Writing training 18920 dialogues (0 left out)


### REFERENCES

Rico Sennrich, Barry Haddow and Alexandra Birch (2016): Neural Machine Translation of Rare Words with Subword Units Proceedings of the 54th Annual Meeting of the Association for Computational Linguistics (ACL 2016). Berlin, Germany.
