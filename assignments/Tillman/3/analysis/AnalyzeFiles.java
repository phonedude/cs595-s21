import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class AnalyzeFiles{
    public static void main(String[] args) throws Exception
    {
      String directory = "C:/Users/freeq/OneDrive/Desktop/cs495/cs595-s21/assignments/Tillman/3/analysis/";
      File[] files = new File(directory).listFiles();
      List<SiteReport> reports = new ArrayList<SiteReport>();
      for(File file : files){
        if(file.isFile()){
          System.out.println(file.getAbsolutePath().toString());
          SiteReport s = processFile(file.getAbsolutePath().toString());
          reports.add(s);
        }
      }
      for(SiteReport s: reports)
      {
        System.out.println("URL:" + s.getSiteUrl() + " Terminating Code:" + 
        s.getTerminatingStatusCode() + " Total Cookies:" + s.getNumTotalCookies() + " SameSite Cookies:"
        + s.getNumSameSite() + " HTTP Only Cookies:" + s.getNumHttpOnly() + " Secure Cookies: " + s.getNumSecure() + " Path Cookies:" + 
        s.getNumPath() + " Extended Path Cookies:" + s.getNumExtendedPath());
      }


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