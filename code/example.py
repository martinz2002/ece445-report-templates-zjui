# mp4.py
# ---------------
# Licensing Information:  You are free to use or extend this projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to the University of Illinois at Urbana-Champaign
#
# Created Fall 2018: Margaret Fleck, Renxuan Wang, Tiantian Fang, Edward Huang (adapted from a U. Penn assignment)
# Modified Spring 2020: Jialu Li, Guannan Guo, and Kiran Ramnath
# Modified Fall 2020: Amnon Attali, Jatin Arora
# Modified Spring 2021 by Kiran Ramnath
"""
Part 1: Simple baseline that only uses word statistics to predict tags
"""


def baseline(train, test):
    '''
    input:  training data (list of sentences, with tags on the words)
            test data (list of sentences, no tags on the words)
    output: list of sentences, each sentence is a list of (word,tag) pairs.
            E.g., [[(word1, tag1), (word2, tag2)], [(word3, tag3), (word4, tag4)]]
    '''
    tags_dict = {}
    words_dict = {}
    for sentence in train:
        for words in sentence:
            word = words[0]
            tag = words[1]
            if word in words_dict:
                if tag in words_dict[word]:
                    words_dict[word][tag] += 1
                else:
                    words_dict[word][tag] = 1
            else:
                words_dict[word] = {tag: 1}
            if tag in tags_dict:
                tags_dict[tag] += 1
            else:
                tags_dict[tag] = 1

    return_list = []
    for sentence in test:
        temp = []
        for word in sentence:
            if word in words_dict:
                temp.append((word, max(words_dict[word], key=words_dict[word].get)))
            else:
                temp.append((word, max(tags_dict, key=tags_dict.get)))
        return_list.append(temp)

    return return_list
