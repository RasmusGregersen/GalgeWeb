package galgeleg;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.ArrayList;
import javax.jws.WebMethod;
import javax.jws.WebService;

/**
 *
 * @author IamHexor
 */
@WebService
public interface GalgelegI {
  @WebMethod  public ArrayList<String> getBrugteBogstaver();
   @WebMethod public String getSynligtOrd();
   @WebMethod public String getOrdet();
   @WebMethod public String logStatus();
   @WebMethod public int getAntalForkerteBogstaver();
   @WebMethod boolean erSidsteBogstavKorrekt();
   @WebMethod public boolean erSpilletVundet();
   @WebMethod public boolean erSpilletTabt();
   @WebMethod public boolean erSpilletSlut();
   @WebMethod public void nulstil();
   @WebMethod public void opdaterSynligtOrd();
   @WebMethod public void gætBogstav(String bogstav);
   @WebMethod boolean login(String bruger, String adgangskode) throws Exception;
   @WebMethod public void addLostGame();
   @WebMethod public void addWonGame();
   @WebMethod public int getLostGames();
   @WebMethod public int getWonGames();
           
}
