/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.gamestar.bl;

import cr.ac.una.prograiv.gamestar.dao.CatalogosDAO;
import cr.ac.una.prograiv.gamestar.dao.CategoriasDAO;
import cr.ac.una.prograiv.gamestar.dao.DetallesDAO;
import cr.ac.una.prograiv.gamestar.dao.IBaseDAO;
import cr.ac.una.prograiv.gamestar.dao.MediaDAO;
import cr.ac.una.prograiv.gamestar.dao.OrdenesDAO;
import cr.ac.una.prograiv.gamestar.dao.UsuariosDAO;
import java.util.LinkedHashMap;

/**
 *
 * @author Byron
 */
public class BaseBL {
private final LinkedHashMap<String, IBaseDAO> daos;

    public BaseBL() {
        daos = new LinkedHashMap();
        daos.put("cr.ac.una.prograiv.gamestar.domain.Media", new MediaDAO());
        daos.put("cr.ac.una.prograiv.gamestar.domain.Usuarios", new UsuariosDAO());
        daos.put("cr.ac.una.prograiv.gamestar.domain.Catalogos", new CatalogosDAO());
        daos.put("cr.ac.una.prograiv.gamestar.domain.Ordenes", new OrdenesDAO());
        daos.put("cr.ac.una.prograiv.gamestar.domain.Categorias", new CategoriasDAO());
        daos.put("cr.ac.una.prograiv.gamestar.domain.Detalles", new DetallesDAO());
        
        
    }
    
    public IBaseDAO getDao(String className){
        return daos.get(className);
    }
}
