/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Admin
 */
public class Categogy {
    private int cid;
    private String cname;

    public Categogy(int cid, String cname) {
        this.cid = cid;
        this.cname = cname;
    }

    public Categogy() {
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "Categogy{" + "cid=" + cid + ", cname=" + cname + '}';
    }

}
