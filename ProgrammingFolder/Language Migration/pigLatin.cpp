/*Keegan Hardy • Pig Latin Translator • February 2017*/

#include <iostream>
#include <string>

using namespace std;

string pigLatin(string);

int main() {
   string translate;
   
   cout << "Welcome to the Pig Latin Translator! Please enter the sentence that you would\nlike to have translated: " << endl;
   getline(cin, translate);
   translate = pigLatin(translate);
   cout << translate << endl;
   
   return 0;
}

string pigLatin(string input) {
   string translation, sentence = "";
   int l = 0, i = 0;
   
   while (input[i] != '\0') {
      if (input.find(' ', i) != -1) {
         l = input.find(' ', i);
         l -= i;
         translation = input.substr(i, l);
         translation.insert(l, "ay");
         translation.insert(l, 1, input[i]);
         translation.erase(0, 1);
         i += l +1;
      } else {
         translation = input.substr(i);
         l = translation.length();
         translation.insert(l, "ay");
         translation.insert(l, 1, input[i]);
         translation.erase(0, 1);
         i = input.length();
      }
      sentence += (translation + " ");
   }
   return sentence;
}
