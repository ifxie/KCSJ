package bean;

import com.sun.rowset.CachedRowSetImpl;

public class Notes {
    CachedRowSetImpl rowSet7=null;

    String result = "";

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public CachedRowSetImpl getRowSet7() {
        return rowSet7;
    }

    public void setRowSet7(CachedRowSetImpl rowSet7) {
        this.rowSet7 = rowSet7;
    }
}
