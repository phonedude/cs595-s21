import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

public class AnalyzeFiles{
    public static void main(String[] args) throws Exception
    {
      String directory = "C:/Users/freeq/OneDrive/Desktop/cs495/cs595-s21/assignments/Tillman/3/data";
      File[] files = new File(directory).listFiles();
      List<SiteReport> reports = new ArrayList<SiteReport>();
      for(File file : files){
        if(file.isFile()){
          //System.out.println(file.getAbsolutePath().toString());
          SiteReport s = processFile(file.getAbsolutePath().toString());
          reports.add(s);
        }
      }
ArrayList<Integer> cookiesList = new ArrayList<Integer>();
      String leftAlignFormat = "| %-30s | %-4d | %-4d | %-4d | %-4d | %-4d | %-4d | %-4d |%n";
System.out.println("Legend:");
System.out.println("TSC - Terminating Status Code");
System.out.println("TC - Total Cookies");
System.out.println("SSC - Same Site Cookies");
System.out.println("HTTP - HTTP Only Cookies");
System.out.println("S - Secure Cookies");
System.out.println("P - Cookies that Set Path");
System.out.println("EP - Cookies that Set Path other than \\");
for (int i = 0; i < reports.size(); i++) {
  if(i%Math.round(reports.size()/4)==0){
    System.out.format("+--------------------------------+------+------+------+------+------+------+------+%n");
System.out.format("| Website URL                    | TSC  | TC   | SSC  | HTTP | S    | P    | EP   |%n");
System.out.format("+--------------------------------+------+------+------+------+------+------+------+%n");
  }
    SiteReport s = reports.get(i);
    System.out.format(leftAlignFormat, s.getSiteUrl().replace(".txt", ""), s.getTerminatingStatusCode(), s.getNumTotalCookies(), s.getNumSameSite(), s.getNumHttpOnly(), s.getNumSecure(), s.getNumPath(), s.getNumExtendedPath());
    cookiesList.add((Integer)s.getNumTotalCookies());
  }


Collections.sort(cookiesList);
System.out.println("Minimum number of cookies - " + cookiesList.get(0));
System.out.println("Maximum number of cookies - " + cookiesList.get(cookiesList.size()-1));
int total = 0;
for(int i = 0; i<cookiesList.size();i++)
{
  total+=cookiesList.get(i);
}
int mean = total/cookiesList.size();
System.out.println("Mean number of cookies - " + mean);
int middle = cookiesList.size() / 2;
    middle = middle > 0 && middle % 2 == 0 ? middle - 1 : middle;
    
System.out.println("Median number of cookies - " + cookiesList.get(middle));
    } 

  public static SiteReport processFile(String fileName) throws Exception
  {
    List<String> lines = Files.readAllLines(Path.of(fileName), StandardCharsets.ISO_8859_1);
    int numberOfCookies = 0;
    int terminatingCode = 0;
    int numHttpOnly = 0;
    int numSecure = 0;
    int numSameSite = 0;
    int numPath = 0;
    int numExtendedPath = 0;
    int numEmptyPath = 0;
    SiteReport s = new SiteReport();
    s.setSiteUrl(fileName.split(Pattern.quote("\\"))[fileName.split(Pattern.quote("\\")).length-1]);
    for(String l : lines)
    {
      try{
        //do all string operations in lowercase
        l=l.toLowerCase();
        //stop reading at html
        if(l.contains("<!doctype html>")) break;
        
        if(l.contains("http/")){if((l.split(" ")).length > 1)terminatingCode = Integer.parseInt(l.split(" ")[1]);}
        if(l.contains("set-cookie:")) numberOfCookies++;
        if(l.contains("samesite"))numSameSite++;
        if(l.contains("path=/;"))numEmptyPath++;
        if(l.contains("path="))numPath++;
        if(l.contains("secure"))numSecure++;
        if(l.contains("httponly"))numHttpOnly++;

      }catch(Exception e){
        continue;
      }

  
{

}
}
numExtendedPath = numPath - numEmptyPath;
s.setTerminatingStatusCode(terminatingCode);
s.setNumTotalCookies(numberOfCookies);
s.setNumHttpOnly(numHttpOnly);
s.setNumPath(numPath);
s.setNumExtendedPath(numExtendedPath);
s.setNumSameSite(numSameSite);
s.setNumSecure(numSecure);
return s;
  }

    
}