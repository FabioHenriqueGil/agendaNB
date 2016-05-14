/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufpr.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author fabio
 */
public class PrimeiraLogica implements ILogica{
    
   

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
    
        System.out.println("primeira logica executada com sucesso");
        return "primeiraLogica.jsp";
    }
    
            
}
