/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufpr.logica;

import br.ufpr.dao.ContatoDao;
import br.ufpr.modelo.Contato;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabio
 */
public class AlterarContatoLogica implements ILogica {

    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String endereco = request.getParameter("endereco");
        String dataNascimentoTXT = request.getParameter("dataNascimento");
        Calendar dataNascimento = Calendar.getInstance();
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        try {
            dataNascimento.setTime(format.parse(dataNascimentoTXT));
        } catch (ParseException e) {
            throw new RuntimeException();
        }
        ContatoDao contatoDao = new ContatoDao();
        Contato contato;
        System.out.println("ESTE É O NOME: "+id);
        contato = new Contato(Long.parseLong(id), nome, email, endereco, dataNascimento);
        contatoDao.altera(contato);


        return "mvc?logica=ListarContatosLogica";

    }
}
