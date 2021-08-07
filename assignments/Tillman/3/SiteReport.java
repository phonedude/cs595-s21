public class SiteReport {
    private String siteUrl;
    private int terminatingStatusCode;
    private int numTotalCookies;
    private int numHttpOnly;
    private int numSecure;
    private int numSameSite;
    private int numPath;
    private int numExtendedPath;
    
    public String getSiteUrl() {
        return siteUrl;
    }
    public int getNumExtendedPath() {
        return numExtendedPath;
    }
    public void setNumExtendedPath(int numExtendedPath) {
        this.numExtendedPath = numExtendedPath;
    }
    public int getNumPath() {
        return numPath;
    }
    public void setNumPath(int numPath) {
        this.numPath = numPath;
    }
    public int getNumSameSite() {
        return numSameSite;
    }
    public void setNumSameSite(int numSameSite) {
        this.numSameSite = numSameSite;
    }
    public int getNumSecure() {
        return numSecure;
    }
    public void setNumSecure(int numSecure) {
        this.numSecure = numSecure;
    }
    public int getNumHttpOnly() {
        return numHttpOnly;
    }
    public void setNumHttpOnly(int numHttpOnly) {
        this.numHttpOnly = numHttpOnly;
    }
    public int getNumTotalCookies() {
        return numTotalCookies;
    }
    public void setNumTotalCookies(int numTotalCookies) {
        this.numTotalCookies = numTotalCookies;
    }
    public int getTerminatingStatusCode() {
        return terminatingStatusCode;
    }
    public void setTerminatingStatusCode(int terminatingStatusCode) {
        this.terminatingStatusCode = terminatingStatusCode;
    }
    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }

}