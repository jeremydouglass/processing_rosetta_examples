/**
 * Anagrams
 * https://rosettacode.org/wiki/Anagrams#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * When two or more words are composed of the same characters, but in a
 * different order, they are called anagrams.
 * 
 * Task:
 * 
 * Using the word list at  http://wiki.puzzlers.org/pub/wordlists/unixdict.txt
 * find the sets of words that share the same characters that contain the most
 * words in them.
 */

import java.util.Map;

void setup() {
  String[] words = loadStrings("http://wiki.puzzlers.org/pub/wordlists/unixdict.txt");
  topAnagrams(words);
}

void topAnagrams (String[] words) {
  HashMap<String, StringList> anagrams = new HashMap<String, StringList>();
  int maxcount = 0;
  for (String word : words) {
    char[] chars = word.toCharArray();
    chars = sort(chars);
    String key = new String(chars);
    if (!anagrams.containsKey(key)) {
      anagrams.put(key, new StringList());
    }
    anagrams.get(key).append(word);
    maxcount = max(maxcount, anagrams.get(key).size());
  }
  for (StringList ana : anagrams.values()) {
    if (ana.size() >= maxcount) {
      println(ana);
    }
  }
}

/**
 * OUTPUT
 * 
 * StringList size=5 [ "evil", "levi", "live", "veil", "vile" ]
 * StringList size=5 [ "abel", "able", "bale", "bela", "elba" ]
 * StringList size=5 [ "elan", "lane", "lean", "lena", "neal" ]
 * StringList size=5 [ "angel", "angle", "galen", "glean", "lange" ]
 * StringList size=5 [ "alger", "glare", "lager", "large", "regal" ]
 * StringList size=5 [ "caret", "carte", "cater", "crate", "trace" ]
 */
