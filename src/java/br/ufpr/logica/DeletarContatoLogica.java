/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufpr.logica;

import br.ufpr.dao.ContatoDao;
import br.ufpr.modelo.Contato;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabio
 */
public class DeletarContatoLogica implements ILogica {

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Long id = Long.parseLong(request.getParameter("id"));
        ContatoDao contatoDao = new ContatoDao();
        Contato contato = new Contato(id);
        contatoDao.deleta(contato);

        return "mvc?logica=ListarContatosLogica";

    }
}
