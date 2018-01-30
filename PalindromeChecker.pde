public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String wordtwo = onlyLetters(word);
  if(wordtwo.equals(reverse(((wordtwo)))))
  return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i >= 1;i--)
      {
      sNew = sNew + str.substring(i-1,i);
      }
    return sNew;
}
public String onlyLetters(String str)
{
  String lowerCase = str.toLowerCase();
  String finalString = new String();
  for(int i = 0; i< lowerCase.length();i++)
  {
    if(Character.isLetter(lowerCase.charAt(i))==true)
    finalString = finalString + lowerCase.substring(i,i+1);
  }
  return finalString;
}
 