package cr.ac.una.prograiv.gamestar.domain;
// Generated Jan 20, 2018 8:55:39 AM by Hibernate Tools 4.3.1



/**
 * Media generated by hbm2java
 */
public class Media  implements java.io.Serializable {


     private Integer id;
     private String url;
     private String categoria;
     private String catalogo;

    public Media() {
    }

    public Media(String url, String categoria, String catalogo) {
       this.url = url;
       this.categoria = categoria;
       this.catalogo = catalogo;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public String getCatalogo() {
        return this.catalogo;
    }
    
    public void setCatalogo(String catalogo) {
        this.catalogo = catalogo;
    }




}


